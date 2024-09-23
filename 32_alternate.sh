#!/bin/bash

# Default range
min_uid=500
max_uid=100000

# If command-line arguments are provided, set the min and max UID accordingly
if [ $# -eq 2 ]; then
    min_uid=$1
    max_uid=$2
elif [ $# -eq 1 ]; then
    echo "Error: Please provide both minimum and maximum UID or none."
    exit 1
fi

echo "Displaying users with UIDs between $min_uid and $max_uid:"

# Loop through the /etc/passwd file and filter based on UID range
while IFS=: read -r username _ uid _; do
    if [ "$uid" -ge "$min_uid" ] && [ "$uid" -le "$max_uid" ]; then
        echo "Username: $username, UID: $uid"
    fi
done < /etc/passwd

