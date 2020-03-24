#!/bin/bash -x
read -p "enter three number " num1 num2 num3
echo $num1 $num2 $num3
v1=$(($num1+$num2*$num3))
v2=$(($num1%$num2+$num3))
v3=$(($num3+$num1/$num2))
v4=$(($num1*$num2+$num3))
echo "$num1+$num2*$num3 = $v1"
echo "$num1%$num2+$num3 = $v2"
echo "$num3+$num1/$num2 = $v3"
echo "$num1*$num2+$num3 = $v4"
max=$v1
if [ $max -lt $v2 ]
then
	max=$v2
fi
if [ $max -lt $v3 ]
then
        max=$v3
fi
if [ $max -lt $v4 ]
then
        max=$v4
fi
echo "maximum is : $max"
min=$v1
if [ $min -gt $v2 ]
then
	min=$v2
fi
if [ $min -gt $v3 ]
then 
        min=$v3
fi
if [ $min -gt $v4 ]
then 
        min=$v4
fi
echo "minimum is : $min"




