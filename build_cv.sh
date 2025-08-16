#!/bin/bash

# Build CV with active links
# This script generates the PDF with clickable hyperlinks

echo "Building CV with active links..."

# Preprocess README to extract headers from HTML summary tags
echo "Preprocessing README.md to handle headers..."
python3 preprocess_readme.py README.md README_processed.md

if [ $? -ne 0 ]; then
    echo "❌ Error preprocessing README.md"
    exit 1
fi

pandoc \
    --pdf-engine=xelatex \
    --template="Pandoc-Emojis-Filter/template.tex" \
    -o CV_Aliev_data_engineer.pdf \
    README_processed.md \
    --filter=Pandoc-Emojis-Filter/emoji_filter.js \
    -M emoji=noto-emoji \
    --from gfm+attributes \
    -V colorlinks \
    -V urlcolor=NavyBlue \
    -V linkcolor=NavyBlue \
    -V "geometry:top=2.6cm,bottom=2.5cm,left=2.5cm,right=2.5cm" \
    --wrap=preserve

if [ $? -eq 0 ]; then
    echo "✅ CV successfully built with active links!"
    echo "📄 Output: CV_Aliev_data_engineer.pdf"
    # Clean up temporary processed file
    rm -f README_processed.md
else
    echo "❌ Error building CV"
    # Clean up temporary processed file even on error
    rm -f README_processed.md
    exit 1
fi
