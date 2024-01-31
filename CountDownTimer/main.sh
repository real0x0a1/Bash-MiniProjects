#!/bin/bash

# -*- Author: Ali -*-
# -*- Info: Bash script for a simple countdown timer -*-

# Function to display countdown
countdown() {
    local remaining=$1

    while [ $remaining -gt 0 ]; do
        echo -ne "Remaining time: $remaining seconds\r"
        sleep 1
        ((remaining--))
    done

    echo -e "Time's up!"
}

# Check if duration is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 duration_in_seconds"
    exit 1
fi

duration=$1
countdown "$duration"
