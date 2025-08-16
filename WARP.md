# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Quick Commands

### Build PDF CV
```bash
# Build PDF with clickable hyperlinks from README.md
./build_cv.sh
# Output: CV_Aliev_data_engineer.pdf
```

### Serve Jekyll Site Locally
```bash
cd docs
bundle install                    # First-time setup
bundle exec jekyll serve          # Starts local server at http://localhost:4000
```

### Run Linting
```bash
cd docs
npm install                       # First-time setup
npm run lint:md                   # Run markdown linter
```

### Check Responsive Layout
```bash
cd docs
node scripts/check_overlap.js    # Checks for sidebar overlaps at various viewport widths
```

### Install Dependencies (First-time Setup)

#### For PDF generation (Pandoc + XeLaTeX)
```bash
# Ubuntu/Debian
sudo apt-get install pandoc texlive-xetex texlive-fonts-extra inkscape

# macOS
brew install pandoc mactex inkscape

# Install emoji filter dependencies
cd Pandoc-Emojis-Filter
npm install
```

#### For Jekyll site
```bash
cd docs
bundle install
npm install
```

## Project Architecture

This repository maintains a dual-format CV/Resume system:

1. **Single Source of Truth**: `README.md` contains the complete CV content in Markdown format
2. **PDF Generation**: Uses Pandoc with custom emoji filter to create professional PDF output
3. **Web Version**: Jekyll static site hosted on GitHub Pages at https://инженер-данных.рф

### PDF Pipeline

The PDF generation flow (`build_cv.sh`):
- Invokes Pandoc with XeLaTeX engine for typesetting
- Uses `Pandoc-Emojis-Filter/emoji_filter.js` to convert emoji to PDF-compatible images
- Downloads emoji SVGs from noto-emoji repository and converts them to PDF using Inkscape
- Applies custom LaTeX template (`Pandoc-Emojis-Filter/template.tex`) for styling
- Generates clickable hyperlinks in the PDF output

### Web Pipeline

The Jekyll site (`docs/` directory):
- `index.md` contains the web version of the CV (derived from README.md)
- `_config.yml` configures Jekyll with custom domain support
- GitHub Pages automatically builds and deploys on push to main branch
- Custom styling in `assets/css/style.css` provides responsive layout with sidebars

### CI/CD

GitHub Actions workflow (`.github/workflows/docs-lint.yml`):
- Runs on every push to main/master and on pull requests
- Executes markdownlint for Markdown quality checks
- Runs HTMLProofer to validate generated HTML
- Ensures Jekyll build succeeds without errors

## Repository Structure

```
CV/
├── README.md                    # Master CV content (source of truth)
├── CV_Aliev_data_engineer.pdf  # Generated PDF output
├── build_cv.sh                  # PDF build script
├── photo.jpg                    # Profile photo
├── qr.png                       # QR code for web version
│
├── docs/                        # Jekyll site directory
│   ├── index.md                 # Web version of CV
│   ├── _config.yml              # Jekyll configuration
│   ├── _layouts/                # HTML templates
│   ├── _includes/               # Reusable HTML components
│   ├── assets/                  # CSS and other static assets
│   ├── scripts/                 # JavaScript utilities
│   │   └── check_overlap.js    # Responsive layout tester
│   ├── Gemfile                  # Ruby dependencies
│   └── package.json             # Node.js dependencies
│
├── Pandoc-Emojis-Filter/        # Custom Pandoc filter (git submodule)
│   ├── emoji_filter.js          # Main filter script
│   ├── template.tex             # LaTeX template for PDF
│   └── package.json             # Filter dependencies
│
├── noto-emoji/                  # Cached emoji SVGs
└── .github/
    └── workflows/
        └── docs-lint.yml        # CI pipeline configuration
```

## Key Technical Details

### Emoji Support in PDF
The repository uses a custom Pandoc filter to handle emojis in PDF generation. The filter:
- Intercepts emoji Unicode characters during Pandoc processing
- Downloads corresponding SVG files from Google's noto-emoji repository
- Converts SVGs to PDF using Inkscape
- Embeds the PDF images inline at 1em height

### Responsive Web Design
The Jekyll site uses a three-column layout with sidebars that adapt to different screen sizes. The `check_overlap.js` script validates that content doesn't overlap at common viewport widths (320px to 1440px).

### Markdown Processing
- PDF uses GitHub Flavored Markdown (GFM) parsing
- Jekyll uses Kramdown for the web version
- Both preserve line breaks and support collapsible sections (`<details>` tags)

### Domain Configuration
The site is configured for a custom Cyrillic domain (инженер-данных.рф) with proper UTF-8 support and CNAME configuration.
