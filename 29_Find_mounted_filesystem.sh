#!/bin/bash

# Check if the user passed an argument (i.e., the filesystem to check)
if [ -z "$1" ]; then
    echo "Usage: $0 <filesystem/mount-point>"
    exit 1
fi

# Get the filesystem or mount point from the argument
filesystem=$1

# Use findmnt to check if the filesystem is mounted
if findmnt -r "$filesystem" > /dev/null 2>&1; then
    echo "$filesystem is mounted."
else
    echo "$filesystem is not mounted."
fi

