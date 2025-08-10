#!/usr/bin/env node
/*
  Responsive overlap check for CV page sidebars.
  - Loads the page at provided URL
  - Tests a set of viewport widths
  - Detects horizontal overlap between .sidebar-left / .content / .sidebar-right
  - Saves screenshots and JSON summary.
*/
const fs = require('fs');
const path = require('path');
const puppeteer = require('puppeteer');

(async () => {
  const url = process.env.TARGET_URL || 'http://localhost:4000/CV/';
  const outDir = process.env.OUT_DIR || path.resolve(__dirname, 'reports');
  const widths = (process.env.WIDTHS || '320,375,414,600,768,834,1024,1280,1440').split(',').map(w => parseInt(w.trim(), 10));
  const height = parseInt(process.env.HEIGHT || '1000', 10);

  fs.mkdirSync(outDir, { recursive: true });

  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-gpu']
  });
  const page = await browser.newPage();

  const results = [];

  function isOverlap(a, b, pad = 0) {
    return !(a.right + pad <= b.left || b.right + pad <= a.left || a.bottom + pad <= b.top || b.bottom + pad <= a.top);
  }

  for (const w of widths) {
    await page.setViewport({ width: w, height });
    const resp = await page.goto(url, { waitUntil: 'networkidle2', timeout: 60000 });
    if (!resp || !resp.ok()) {
      results.push({ width: w, error: `Failed to load (${resp ? resp.status() : 'no response'})` });
      continue;
    }

    const data = await page.evaluate(() => {
      const left = document.querySelector('.sidebar-left');
      const right = document.querySelector('.sidebar-right');
      const content = document.querySelector('.content');
      function rect(el){
        if(!el) return null;
        const r = el.getBoundingClientRect();
        return { left: r.left, right: r.right, top: r.top, bottom: r.bottom, width: r.width, height: r.height };
      }
      return {
        left: rect(left),
        right: rect(right),
        content: rect(content),
        scrollW: document.documentElement.scrollWidth,
        clientW: document.documentElement.clientWidth
      };
    });

    let overlapNotes = [];
    if (data.left && data.content && isOverlap(data.left, data.content)) overlapNotes.push('left-content overlap');
    if (data.right && data.content && isOverlap(data.right, data.content)) overlapNotes.push('right-content overlap');
    if (data.left && data.right && isOverlap(data.left, data.right)) overlapNotes.push('left-right overlap');

    // Also check if page requires horizontal scroll unexpectedly
    const requiresHorizontalScroll = data.scrollW > data.clientW + 1;

    const shotPath = path.join(outDir, `overlap_${w}.png`);
    await page.screenshot({ path: shotPath, fullPage: false });

    results.push({ width: w, rects: data, overlap: overlapNotes, requiresHorizontalScroll, screenshot: path.basename(shotPath) });
  }

  await browser.close();

  const summary = {
    url,
    checkedAt: new Date().toISOString(),
    widths,
    results
  };
  const outJson = path.join(outDir, 'responsive_overlap_summary.json');
  fs.writeFileSync(outJson, JSON.stringify(summary, null, 2));
  console.log(`Saved responsive overlap summary to ${outJson}`);
})();

