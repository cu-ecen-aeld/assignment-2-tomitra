#!/bin/bash

# Check if arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Required arguments not provided."
    exit 1
fi

# Check if filesdir is a directory
if [ ! -d "$1" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Find number of files and matching lines
files=$(find "$1" -type f | wc -l)
lines=$(grep -r "$2" "$1" | wc -l)

# Print the result
echo "The number of files are $files and the number of matching lines are $lines."

