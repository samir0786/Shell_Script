#!/bin/bash
read -p "Enter inches" inches
echo $(($inches/12)) ft $(($inches%12)) inches

#INCHES=12
#feet=`echo "scale=2; 42/$INCHES" | bc`
#echo 42 Inches: $feet
