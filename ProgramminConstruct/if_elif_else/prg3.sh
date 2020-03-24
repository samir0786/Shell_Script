#!/bin/bash -x
echo "enter the number"
read num;
if [ $num -lt 10 ]
then
	echo "unit"
elif [ $num -lt 100 ]
then
	echo "ten"
elif [ $num -lt 1000 ]
then
	echo "hundred"
elif [ $num -lt 10000 ]
then
        echo "thousand"
elif [ $num -lt 100000 ]
then
        echo "tenThousand"
elif [ $num -eq 100000 ]
then
        echo "lakh"
elif [ $num -lt 10000000 ]
then
        echo "tenlakh"
elif [ $num -lt 100000000 ]
then
        echo "crore"
else
	echo "out of bound"
fi

