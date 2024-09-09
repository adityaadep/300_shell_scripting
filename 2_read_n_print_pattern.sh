#!/bin/bash
#A2 : Read 'n' and generate a pattern given below
#1
#1 2
#1 2 3
#1 2 3 4
read n
for i in $(seq 1 $n);
do
	j=1
	while [ $j -le $i ];
		do
			echo -n "$j "
			((j++))
		done
		((i++))
		echo ""
done


