#!/bin/bash

# Define a recursive function that echoes the first argument and then recurses
print_first_arg() {
    # Base case: If there are no arguments, stop recursion
    if [ -z "$1" ]; then
        return
    fi

    # Echo the first positional argument ($1)
    echo "$1"

    # Recursive call to the function with the remaining arguments
    shift
    print_first_arg "$@"
}

# Call the function with all command-line arguments passed to the script
print_first_arg "$@"

