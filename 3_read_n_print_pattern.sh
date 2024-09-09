#!/bin/bash
#A2 : Read 'n' and generate a pattern given below
#1
#1 2
#1 2 3
#1 2 3 4
#set -x
read n
cnt=1
for i in $(seq 1 $n);
do
	j=1
	while [ $j -le $i ];
		do
			echo -n "$cnt "
			((j++))
			((cnt++))
		done
		((i++))
		echo ""
done


