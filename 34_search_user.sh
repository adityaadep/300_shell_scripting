#!/bin/bash

# Check if a search term is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Store the username to search for
search_name=$1

# Fetch usernames from the /etc/passwd file
usernames=($(cut -d':' -f1 /etc/passwd))

# Initialize a flag to track if the username is found
found=0

# Loop through the array of usernames and search for the provided name
for username in "${usernames[@]}"; do
    if [ "$username" == "$search_name" ]; then
        echo "User '$search_name' found in /etc/passwd."
        found=1
        break
    fi
done

# If the username was not found, print a message
if [ $found -eq 0 ]; then
    echo "User '$search_name' not found in /etc/passwd."
fi

