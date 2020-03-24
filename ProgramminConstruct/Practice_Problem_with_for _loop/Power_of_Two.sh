#!/bin/bash -x
echo "enter a value"
read n
sum=1
for (( i=1; i<=$n; i++ ))
do
	sum=$((2*$sum))
	echo "2^$i=$sum"
done
