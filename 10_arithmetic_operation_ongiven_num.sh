#!/bin/bash

# Prompt the user to enter array elements separated by spaces
echo "Enter array elements separated by spaces:"
number=$1

operator=${number: -1}
numbers=${number%?}
echo "$operator $numbers"

result=${numbers:0:1}
echo "${result}"
for (( i=1;i<${#numbers};i++ ))
do
 case $operator in
 +)
 result=$(expr $result + ${numbers:$i:1})
 ;;
 -)
 result=$(expr $result - ${numbers:$i:1})
 ;;
 \*)
 result=$(expr $result \* ${numbers:$i:1})
 ;;
 /)
 result=$(expr $result / ${numbers:$i:1})
 ;;
 esac
done
echo "${result}"	


