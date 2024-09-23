#!/bin/bash
#set -x
max=0
for i in $(cat /etc/passwd | cut -d: -f1);do
 echo $i
 length=$(echo $i | awk '{print length($0)}')
 if [ $length -gt $max ]; then
  max=$length
  string=$i
 fi 
done

echo "$max is the max length of string $string"
