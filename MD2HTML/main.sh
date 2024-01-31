#!/bin/bash

# -*- Author: Ali -*-
# -*- Info: Convert Markdown to HTML with pandoc -*-

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed. Please install it first."
    exit 1
fi

# Prompt user for input Markdown file
read -p "Enter the path to the input Markdown file: " input_file

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file does not exist."
    exit 1
fi

output_file="${input_file%.md}.html"
css_file="styles.css"  # Path to your CSS file

# Convert Markdown to HTML with added CSS
pandoc -f markdown -t html "$input_file" -o "$output_file" --css "$css_file"

if [ $? -eq 0 ]; then
    echo "Conversion successful. HTML file: $output_file"
else
    echo "Conversion failed."
fi
