#!/bin/bash -x
flipCoin=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $flipCoin ]
then
	echo HEADS
else
	echo TAILS
fi

