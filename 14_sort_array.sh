#!/bin/bash
read -p "enter array" -a array
read -p "enter asc or desc" sort_type

if [ "$sort_type" == "asc" ];then
 sorted=($(for i in ${array[@]};do echo $i; done | sort -n))
elif [ "$sort_type" == "desc" ]; then
 sorted=($(for i in ${array[@]};do echo $i; done | sort -nr))
fi

echo ${sorted[@]}