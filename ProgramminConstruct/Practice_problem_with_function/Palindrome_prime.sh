#!/bin/bash -x
function Prime() {
local num=$1
i=2
flag=0
while [ $i -lt $num ]
do
	if (( $num % $i == 0 ))
	then
		((flag++))
	fi
	((i++))
done
if (($flag > 0 ))
then
	echo " number is not prime "
else 
	echo " number is prime "
fi
}

function Palindrome(){
local num=$1
number=$num
reverse=0
while [ $number -gt 0 ]
do
a=`expr $number % 10 `
number=`expr $number / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $num -eq $reverse ]
then
    echo "Number is Palindrome"
else
        echo "Number is not Palindrome"

fi
}

echo "enter tha number"
read num
Prime $num
Palindrome $num
