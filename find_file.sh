#!/bin/bash

# Check if a file name is provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  echo "Search for a file in the current directory and its subdirectories."
  exit 1
fi

# File name to search for
filename=$1

# Search for the file
found=$(find . -type f -name "$filename")

if [ -n "$found" ]; then
  echo "File found at:"
  echo "$found"
else
  echo "File not found in the current directory or its subdirectories."
fi

