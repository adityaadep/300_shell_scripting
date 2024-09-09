#!/bin/bash
#Requirements:

#User must provide two numbers and operator through command-line
#Based on input do the operation and show the output.
#Use case to handle multiple operations
#Use expr or bc commands
a=$1
b=$3
operator=$2
case $operator in
 +)
 result=$(expr $a + $b)
 ;;
 -)
 result=$(expr $a - $b)
 ;;
 \*)
 result=$(expr $a \* $b)
 ;;
 /)
 result=$(expr $a / $b)
 ;;
 %)
 result=$(expr $a % $b)
 ;;
 *)
 echo "inavlid operator"
 exit 1
 ;;
esac

echo $result