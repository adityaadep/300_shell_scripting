#!/bin/bash
#set -x
for i in $(cat /etc/passwd); do
 user=$(echo $i | cut -d: -f1)
 id=$(echo $i | cut -d: -f3)
 if [[ $id -ge 50 ]] && [[ $id -le 500 ]]; then
  echo "$user $id"
 fi
done 
