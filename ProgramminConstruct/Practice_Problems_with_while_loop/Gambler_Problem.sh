#!/bin/bash -x
stake=100
goal=200
cash=$stake
wins=0
loss=0
bets=0
while [[ $cash -gt 0 && $cash -lt $goal ]]
do
	((bets++))
	if [ $((RANDOM%2)) -eq 1 ]
	then
	((cash++))
	((wins++))
	else
	((cash--))
        ((loss++))
fi
done
echo -e "cash=$cash \nwins=$wins \nloss=$loss \nbets=$bets"

