#!/bin/bash -x
n1=$((RANDOM % 900 + 100))
n2=$((RANDOM % 900 + 100))
n3=$((RANDOM % 900 + 100))
n4=$((RANDOM % 900 + 100))
n5=$((RANDOM % 900 + 100))
echo " $n1 $n2 $n3 $n4 $n5 "
#max=$n1
#min=$n
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ] && [ $n1 -gt $n5 ]
then
	max=$n1
elif [ $n2 -gt $n3 ]  && [ $n2 -gt $n4 ] && [ $n2 -gt $n5 ]
then
        max=$n2
elif [ $n3 -gt $n4 ] && [ $n3 -gt $n5 ]
then
        max=$n3
elif [ $n4 -gt $n5 ]
then
        max=$n4
else
   max=$n5
fi
if [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ] && [ $n1 -lt $n4 ] && [ $n1 -lt $n5 ]
then
   min=$n1
elif [ $n2 -lt $n3 ]  && [ $n2 -lt $n4 ] && [ $n2 -lt $n5 ]
then
        min=$n2
elif [ $n3 -lt $n4 ] && [ $n3 -lt $n5 ]
then
        min=$n3
elif [ $n4 -lt $n5 ]
then
        min=$n4
else
   min=$n5
fi

echo "$ max= $((max))"

echo "$ min= $((min))"
