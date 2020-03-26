#!/bin/bash -x
echo "enter a number"
read num
counter=0
for(( i=2; i<=$num; i++))
do
	while [ $(($num%$i)) -eq 0 ]
	do
#		echo "$i"
		arr[counter++]=$i
		num=$(($num/$i))
	done
done
echo ${arr[@]}


