#!/bin/bash
case=$2
case=$(echo $case | tr [:lower:] [:upper:])
string=$1
if [ $case == "UPPER" ]; then
 echo $string | tr [:lower:] [:upper:]
elif [ $case == "LOWER" ]; then
 echo $string | tr [:upper:] [:lower:]
fi

