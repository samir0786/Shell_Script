#!/bin/bash -x
echo "enter a value bitween 1 to 8"
read n
if [ $n -ge 1 -a $n -le 8 ]
then
	sum=1
	for (( i=1; i<=$n; i++ ))
	do
		sum=$((2*$sum))
		echo "2^$i=$sum"
	done
else
	echo " invalid input "
fi
