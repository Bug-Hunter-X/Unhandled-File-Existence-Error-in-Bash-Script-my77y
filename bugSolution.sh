#!/bin/bash

# This script demonstrates the correct way to handle potential errors when processing a file.

file_to_process="my_file.txt"

# Check if the file exists.
if [ -f "$file_to_process" ]; then
  # Process the file if it exists
  cat "$file_to_process" | awk '{print $1}' > output.txt
  if [ $? -eq 0 ]; then
    echo "File processed successfully."
  else
    echo "An error occurred during file processing."
  fi
else
  echo "Error: File '$file_to_process' not found."
fi