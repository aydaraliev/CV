#!/bin/bash

# Build CV with active links
# This script generates the PDF with clickable hyperlinks

echo "Building CV with active links..."

pandoc \
    --pdf-engine=xelatex \
    --template="Pandoc-Emojis-Filter/template.tex" \
    -o CV_Aliev_data_engineer.pdf \
    README.md \
    --filter=Pandoc-Emojis-Filter/emoji_filter.js \
    -M emoji=noto-emoji \
    --from gfm \
    -V colorlinks \
    -V urlcolor=NavyBlue \
    -V linkcolor=NavyBlue \
    -V "geometry:top=2.6cm,bottom=2.5cm,left=2.5cm,right=2.5cm" \
    --wrap=preserve

if [ $? -eq 0 ]; then
    echo "✅ CV successfully built with active links!"
    echo "📄 Output: CV_Aliev_data_engineer.pdf"
else
    echo "❌ Error building CV"
    exit 1
fi
