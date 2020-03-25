#!/bin/bash -x
function degF_to_degC()
{
	C=`echo "scale=2;$1*(9/5) +32 "| bc `
	echo $C
}
function degC_to_degF()
{
	f=`echo "scale=2; $1-32 *5/9" | bc `
	echo $f 
}

echo " select option 1)for fahrenheit to celsius 2)for celsius to fahrenheit "
read opt
case $opt in
	1)
	echo " enter value in celsius"
	read celsius
	if [[ $celsius -lt 0 || $celsius -gt 100 ]]
	then
	echo " not a valid input"
	else
	     echo "$( degF_to_degC $celsius)"
	fi
	;;
	2)
	echo "enter value in fahrenheit"
	read fahrenheit
	if [[ $fahrenheit -lt 32 || $fahrenheit -gt 212 ]]
	then
	echo " not a valid input"
	else
	echo "$(degC_to_degF $fahrenheit)"
	fi
	echo $result
	;;
	*)
	echo "invalid option"
	;;
esac

