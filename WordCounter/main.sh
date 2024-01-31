#!/bin/bash

# -*- Author: Ali -*-
# -*- Info: Word and Character Count Utility -*-

# Check if input file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 [-c] input.txt"
    echo "Options:"
    echo "  -c: Display words in the terminal"
    exit 1
fi

display_words=false

# Parse options
while getopts ":c" opt; do
    case $opt in
        c)
            display_words=true
            ;;
        \?)
            echo "Invalid option: -$OPTARG"
            exit 1
            ;;
    esac
done
shift $((OPTIND - 1))

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file does not exist."
    exit 1
fi

# Count words and characters
word_count=$(wc -w < "$input_file")
char_count=$(wc -m < "$input_file")

echo "Word count: $word_count"
echo "Character count: $char_count"

# Display words if the option is set
if [ "$display_words" = true ]; then
    echo "Words:"
    cat "$input_file" | tr -s '[:space:]' '\n' | sort | uniq -c
fi
