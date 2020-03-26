#!/bin/bash -x
for(( i=0; i<10; i++ ))
do
	num[$i]=$((RANDOM%900+100))
done
	echo ${num[@]}
	max1=${num[0]}
	max2=${num[0]}
	for(( i=1; i<10; i++ ))
do
	if [[ $max1 -lt ${num[$i]} ]]
	then
	max2=$max1
	max1=${num[$i]}
	elif [[ $max2 -lt ${num[$i]} ]]
	then
	max2=${num[$i]}
	fi
done
echo "second largest = $max2"
	min1=${num[0]}
    min2=${num[0]}
    for(( i=1; i<10; i++ ))
do 
    if [[ $min1 -gt ${num[$i]} ]]
    then
    min2=$min1
    min1=${num[$i]}
    elif [[ $min2 -gt ${num[$i]} ]]
    then
    min2=${num[$i]}
    fi
done
echo "second smallest = $min2"

