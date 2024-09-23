#!/bin/bash

# Check if a .c file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename.c>"
    exit 1
fi

# Store the filename from the first argument
file=$1

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File $file does not exist."
    exit 1
fi

# Get the total number of lines in the file
total_lines=$(wc -l < "$file")

# Calculate 20% of the total number of lines to delete
lines_to_delete=$((total_lines / 5))

echo "Total lines: $total_lines"
echo "Deleting approximately 20% ($lines_to_delete) lines from the file."

# Create a temporary file to store changes
temp_file=$(mktemp)

# Generate random line numbers to delete
# We use shuf to generate unique random line numbers
random_lines=$(shuf -i 1-"$total_lines" -n "$lines_to_delete")

# Loop through the file and delete lines as per the random selection
line_num=1
while IFS= read -r line; do
    if echo "$random_lines" | grep -q -w "$line_num"; then
        # Replace the deleted line with the string "/* This line was deleted */"
        echo "/* This line was deleted */" >> "$temp_file"
    else
        # Write the original line to the temporary file
        echo "$line" >> "$temp_file"
    fi
    line_num=$((line_num + 1))
done < "$file"

# Overwrite the original file with the modified content
mv "$temp_file" "$file"

echo "Random lines deleted and replaced in $file"

