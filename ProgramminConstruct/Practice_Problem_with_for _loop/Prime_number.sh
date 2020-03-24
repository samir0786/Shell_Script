#!/bin/bash -x
echo "Enter the number: "
read num
flag=0
for(( j=$num; j>=1; j--))
        do
           if [ $(($num%$j)) -eq 0 ]
         then
               ((flag++))
        fi
	       
 done
        if [ $flag -eq 2 ]
        then
        echo "number is prime"
else
	echo "number is not prime"
        fi
       

