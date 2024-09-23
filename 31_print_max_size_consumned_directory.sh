#!/bin/bash
#!/bin/bash

# Display all file systems and their disk usage
echo "All file systems and their usage:"
df -h

echo -e "\nFile systems with 10% or less remaining space:"

# Parse the output of df and check file systems with only 10% or less remaining space
# We use a loop and arrays to extract relevant information

# Get all file systems and their usage into arrays
file_systems=($(df -h | grep '^/dev/' | tr -s ' ' | cut -d' ' -f1))
usage_percent=($(df -h | grep '^/dev/' | tr -s ' ' | cut -d' ' -f5 | tr -d '%'))

# Loop through the arrays to find file systems with 10% or less remaining space
for i in "${!file_systems[@]}"; do
    # Calculate the remaining space by subtracting the used percentage from 100
    remaining_space=$((100 - ${usage_percent[i]}))

    # If remaining space is 10% or less, print the file system
    if [ "$remaining_space" -le 10 ]; then
        echo "File system: ${file_systems[i]} has only $remaining_space% remaining."
    fi
done

