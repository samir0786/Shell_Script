#!/bin/bash -x
echo "Enter range of number: "
read start
read end
flag=0
echo "prime number in range $start to $end are:"
for(( i=$start; i<=$end; i++))
do
	for(( j=$i; j>=1; j--))
	do
	   if [ $(($i%$j)) -eq 0 ]
	 then
	       ((flag++))
	fi
	done
 	if [ $flag -eq 2 ]
	then
	echo "$i"
	fi
	flag=0
done
