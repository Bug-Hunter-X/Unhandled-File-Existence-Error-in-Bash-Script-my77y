#!/bin/bash

# This script attempts to process a file, but fails to handle potential errors.

file_to_process="my_file.txt"

# Attempt to process the file, but no error checking.
cat "$file_to_process" | awk '{print $1}' > output.txt

if [ $? -eq 0 ]; then
  echo "File processed successfully."
else
  echo "An error occurred."
fi