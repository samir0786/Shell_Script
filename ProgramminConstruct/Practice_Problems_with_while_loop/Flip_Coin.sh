#!/bin/bash -x
heads=0
tails=0
count=0
while [[ $heads -lt  11 && $tails -lt  11 ]]
do
	coin=$((RANDOM%2))
         if [ $coin -eq 1 ]
	then
	heads=$(($heads+1))
	count=$(($count+1))
else
	tails=$(($tails+1))
	count=$(($count+1))
fi
done
echo -e "count=$count \n heads=$heads \n tails=$tails"
if [ $heads -eq 11 ]
then
	echo "heads reached 11 count first"
else
	echo "tails reached 11 count first"
fi 

