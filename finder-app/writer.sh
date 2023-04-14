#!/bin/bash

#   Check if arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Required arguments not provided."
    exit 1
fi

# Create the directory if it doesn't exist
dir=$(dirname "$1")
mkdir -p "$dir"

# Write to the file
if ! echo "$2" > "$1"; then
    echo "Error: Unable to write to file."
    exit 1
fi
