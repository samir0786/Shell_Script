#!/bin/bash -x

isPart_Time=1;
isFull_Time=2;
max_Hrs_in_Month=100;
emp_Rate_PerHr=20;
num_Working_Days=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $max_Hrs_in_Month && $totalWorkingDays -lt $num_Working_Days ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
		case $empCheck in
			$isFull_Time)
				empHrs=8;
				;;
			$isPart_Time)
				empHrs=4;
				;;
			*)
				empHrs=0
				;;
		esac
		totalEmpHrs=$(($totalEmpHrs+$empHrs))

done
totalSalary=$(($totalEmpHrs*$emp_Rate_PerHr))
