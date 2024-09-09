#!/bin/bash

# Print a header for clarity
echo "File Information in the Current Directory"
echo "========================================="
echo -e "Permissions\tSize\tOwner\tGroup\tModification Time\tFile Name"

# Loop through each file in the current directory
for file in *; do
    if [ -f "$file" ]; then
        # Extract file information
        permissions=$(ls -l "$file" | awk '{print $1}')
        size=$(ls -l "$file" | awk '{print $5}')
        owner=$(ls -l "$file" | awk '{print $3}')
        group=$(ls -l "$file" | awk '{print $4}')
        mod_time=$(ls -l "$file" | awk '{print $6, $7, $8}')
        
        # Print file information in a tabulated format
        echo -e "$permissions\t$size\t$owner\t$group\t$mod_time\t$file"
    fi
done

