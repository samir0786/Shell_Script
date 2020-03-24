#!/bin/sh
read -p "enter year " year
echo "$year"
if [ $year -gt 999 ]
then
	if [ $year -lt 10000 ]
	then
	if [ $(($year%4)) -eq 0 ]
	then
	if [ $(($year%100)) -ne 0 ]
	then
	echo "year is leap year"
	else
	echo "year is not leap year"
	fi
	elif [ $(($year%400)) -eq 0 ]
	then
	echo "year is leap year"
	else
	echo "year is not leap year"
	fi
	else
	echo "year is not 4 digit"
	fi
	else
	echo "year is not 4 digit"
fi

