#!/bin/bash -x
echo "enter tha value for harmonic"
read value
sum=0
	for (( i=1; i<=$value; i++ ))
   do
	div=`echo "scale=2;1/$i" | bc `
	sum=`expr $sum+$div | bc `
done
echo "$sum"
