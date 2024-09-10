#!/bin/bash
#Requirements:

#Using command-line pass n arguments.
#Compare all these arguments and print the largest value
#Print error in-case no arguments.
#Number of arguments can vary every time.
set -x
num=$1
for arg in $@;do
 if [ $arg -gt $num ];then
  num=$arg
 fi
done
echo $num