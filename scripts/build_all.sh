#!/usr/bin/env bash

# 1. Define Output Directory
OUTPUT_BASE="exported_pdfs"

# 2. Check for Pandoc
if ! command -v pandoc &> /dev/null; then
    echo "❌ Error: Pandoc is not installed."
    echo "   Run: sudo zypper in pandoc texlive-scheme-basic"
    exit 1
fi

echo "🚀 Starting PDF Export..."

# 3. Find files safely (handles spaces) and exclude unwanted paths
find . -type f -name "*.md" \
    ! -path "./README.md" \
    ! -path "./_templates/*" \
    ! -path "./scripts/*" \
    ! -path "./.git/*" \
    -print0 | while IFS= read -r -d '' file; do

    # Extract directory and filename
    # e.g., file = "./CHEM-101/01_periodicity.md"
    rel_dir=$(dirname "$file" | sed 's|^\./||')   # "CHEM-101"
    filename=$(basename "$file" .md)              # "01_periodicity"

    # Create matching subfolder in output directory
    mkdir -p "$OUTPUT_BASE/$rel_dir"

    OUTPUT_FILE="$OUTPUT_BASE/$rel_dir/${filename}.pdf"

    echo "📄 Converting: $rel_dir/$filename.md..."

    # Convert using Pandoc
    # We add -V geometry:margin=1in to make it look like a proper document
    pandoc "$file" \
        -o "$OUTPUT_FILE" \
        --pdf-engine=pdflatex \
        -V geometry:margin=1in \
        -V urlcolor=blue \
        --toc

done

echo "✅ All PDFs exported to '$OUTPUT_BASE/' directory."
