#!/bin/bash

# Variables for black and white box colors
black_box="\e[40m  "   # Black box
white_box="\e[47m  "   # White box
reset="\e[0m"          # Reset to default color

# Size of the chessboard (8x8)
board_size=8

# Loop through rows
for (( row=1; row<=board_size; row++ ))
do
    # Loop through columns
    for (( col=1; col<=board_size; col++ ))
    do
        # Determine if the box should be black or white
        if (( (row + col) % 2 == 0 ))
        then
            # Print black box
            echo -ne "$black_box"
        else
            # Print white box
            echo -ne "$white_box"
        fi
    done
    # Reset color and move to the next line after every row
    echo -e "$reset"
done
