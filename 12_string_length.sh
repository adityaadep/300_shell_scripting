#!/bin/bash
string=($@)
echo ${#string[@]}
for i in ${string[@]};
do
 echo "$i ${#i}"
done

