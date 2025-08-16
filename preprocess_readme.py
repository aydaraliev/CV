#!/usr/bin/env python3
"""
Preprocessor for README.md to handle headers in details/summary tags for PDF generation.
This script extracts headers from HTML summary tags and converts them to proper Markdown headers
while preserving the details/summary structure for the GitHub README.
"""

import re
import sys

def preprocess_readme(input_file, output_file):
    """
    Process README.md to extract headers from summary tags for PDF generation.
    
    Args:
        input_file: Path to the input README.md file
        output_file: Path to the output processed markdown file
    """
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Pattern to match details/summary blocks with h2 headers
    # This will match: <summary><h2>📌 Header Text</h2></summary>
    pattern = r'<details(?:\s+open)?>\s*<summary><h2>(.*?)</h2></summary>'
    
    def replace_summary_header(match):
        """Replace the summary with h2 header with a proper markdown header."""
        header_text = match.group(1)
        # Return both the markdown header and keep the details block for content
        # Remove the details/summary tags but keep the content structure
        return f'\n## {header_text}\n\n<details open><summary></summary>'
    
    # Replace all summary headers with proper markdown headers
    processed_content = re.sub(pattern, replace_summary_header, content)
    
    # Also handle cases where we want to show the content without details tags for PDF
    # Remove empty summary tags that we added
    processed_content = re.sub(r'<details open><summary></summary>', '', processed_content)
    
    # Remove closing details tags since we opened them
    processed_content = re.sub(r'</details>', '', processed_content)
    
    # Clean up any remaining details tags without headers (like the closed ones)
    processed_content = re.sub(r'<details>\s*<summary><h2>(.*?)</h2></summary>', r'## \1\n', processed_content)
    
    # Convert HTML img tags to Markdown format for better PDF rendering
    # Special handling for QR code - make it smaller (20% of page width)
    # First, handle the QR code specifically
    processed_content = re.sub(r'<img src="(\./qr\.png)"[^>]*>', r'![](\1){width=20%}', processed_content)
    # Then handle any other images normally
    processed_content = re.sub(r'<img src="([^"]+)"[^>]*>', r'![](\1)', processed_content)
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(processed_content)
    
    print(f"Preprocessed {input_file} -> {output_file}")

if __name__ == "__main__":
    if len(sys.argv) > 2:
        preprocess_readme(sys.argv[1], sys.argv[2])
    else:
        # Default behavior
        preprocess_readme('README.md', 'README_processed.md')
