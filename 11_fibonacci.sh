#!/bin/bash
number=$1
a=0
b=1
for (( i=0;i<$number;i++ ))
do
 echo -n "$a "
 fn=$((a + b))
 a=$b
 b=$fn
done
