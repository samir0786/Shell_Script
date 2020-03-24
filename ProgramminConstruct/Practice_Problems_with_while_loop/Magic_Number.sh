#!/bin/bash -x
echo "think of a number between 1 to 100"
read num
max=100
min=1
while  [ $min -lt $max ]
do
	mid=$((($max+$min)/2))
	echo "is your number $mid (Y/N)"
	read response
	if [ $response -eq 1 ]
	then
	echo "your number is $mid"
	break
	else
	 echo "is your number less then $mid"
	read response
	if [ $response -eq 1 ]
then
	max=$mid
	else
	min=$mid
	fi
     fi
done
