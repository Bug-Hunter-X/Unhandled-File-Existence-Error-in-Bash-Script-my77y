# Unhandled File Existence Error in Bash Script

This repository demonstrates a common error in bash scripting: failing to check if a file exists before processing it. The `bug.sh` script attempts to process a file without checking for its existence, causing an error if the file is missing.  The `bugSolution.sh` script shows the correct way to handle this situation using proper error checking.

## Bug
The `bug.sh` script uses `cat` to read from a file and then pipes the output to `awk`. However, if the specified file does not exist, `cat` will return an error, and the script will continue without reporting a more specific problem.

## Solution
The `bugSolution.sh` script addresses this issue by first checking if the file exists using the `-f` flag with the `test` command (or its shorthand `[ ]`). Only if the file exists does it proceed with the processing.  A clear error message is also provided if the file is missing.