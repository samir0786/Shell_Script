#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHour=20

empCheck=$((RANDOM%3))
case $ramdomCheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac
salery=$(( $empRatePerHour * $empHrs ))
