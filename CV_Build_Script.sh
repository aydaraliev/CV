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
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{14pt}
EOF
) \
    --filter ./Pandoc-Emojis-Filter/pandoc-filter.js \
    -o CV_Aliev_data_engineer.pdf

echo "CV built successfully: CV_Aliev_data_engineer.pdf"
