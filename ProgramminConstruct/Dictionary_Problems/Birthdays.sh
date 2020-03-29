#!/bin/bash/ -x
count=0;
declare -A Month
while [[ $count -lt 50 ]]
do
	month=$(($((RANDOM %12))+1))
	Month[Person:"$count"]=$month
	count=$(($count +1));
done
	for (( i=1;i<=12; i++ ))
do
	count=1;
	echo "==month:$i=="
while [[ $count -lt 50 ]]
do
	if [[ ${Month[Person:"$count"]} -eq $i ]]
	then
	echo "Person:"$count
	fi
		count=$(($count+1))
 done
done
#echo ${!Month[@]}
#echo ${Month[@]}
