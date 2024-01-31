#!/bin/bash

# -*- Author: Ali -*-
# -*- Info:  This Bash script converts an image to ASCII art using jp2a -*-

# Check if jp2a is installed
if ! command -v jp2a &> /dev/null; then
    echo "jp2a is required but not installed. Aborting."
    exit 1
fi

# Check for correct number of arguments
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <image_file> <width> <height>"
    exit 1
fi

IMAGE_PATH="$1"
WIDTH="$2"
HEIGHT="$3"

# Convert the image to ASCII art using jp2a
jp2a "$IMAGE_PATH" --width="$WIDTH" --height="$HEIGHT"
