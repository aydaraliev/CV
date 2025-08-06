#!/bin/bash

echo "Building CV..."

# Convert README.md to PDF using pandoc with custom page numbering
pandoc README.md \
    -f gfm \
    -t latex \
    --pdf-engine=xelatex \
    -V geometry:margin=1.6cm \
    -H <(cat << 'EOF'
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\nouppercase{\leftmark}}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{14.5pt}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
EOF
) \
    --filter ./Pandoc-Emojis-Filter/pandoc-filter.js \
    -o CV_Aliev_data_engineer.pdf

if [ $? -eq 0 ]; then
    echo "✅ CV successfully built with active links!"
    echo "📄 Output: CV_Aliev_data_engineer.pdf"
else
    echo "❌ Error building CV"
    exit 1
fi