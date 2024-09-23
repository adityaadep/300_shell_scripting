#!/bin/bash

# Get the current PATH variable and split it into an array of directories
IFS=':' read -r -a path_dirs <<< "$PATH"

# Initialize a total executable count
total_executable=0

# Loop through each directory in the PATH
for dir in "${path_dirs[@]}"; do
    # Check if the directory exists
    if [ -d "$dir" ]; then
        # Count the number of executable files in the directory
        executable_count=0
        echo "Checking directory: $dir"
        
        # Loop through files in the directory
        for file in "$dir"/*; do
            # Check if the file exists (to avoid errors with empty directories)
            if [ -e "$file" ] && [ -x "$file" ]; then
                executable_count=$((executable_count + 1))
                echo "Executable file: $(basename "$file")"
            fi
        done
        
        # Print the number of executable files found in this directory
        echo "Number of executable files in $dir: $executable_count"
        total_executable=$((total_executable + executable_count))
    else
        echo "Directory $dir does not exist."
    fi
done

# Print the total number of executable files across all directories in PATH
echo "Total number of executable files: $total_executable"

