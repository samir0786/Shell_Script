#!/bin/bash -x
#read -p "Enter Month" month
#read -p "Enter Date" date
month=$1
date=$2
	if [ $month -ge 3 ]
	then
		if [ $month -eq 3 ]
   		then
			if [ $date -ge 20 ]
   			then
				if [ $month -le 6 ]
    				then
					if [ $month -eq 6 ]
     					then
						echo "false"
 					else
						echo "true"
					fi
				else
					echo "false"
				fi
			else
				echo "false"
			fi
		else
			if [ $month -le 6 ]
   			then
			#	echo "false"
      			 	if [ $month -eq 6 ]
  				then
					if [ $date -le 20 ]
					then
						echo "true"
					else
						echo "false"
					fi
				else
					echo "true"
				fi
			else
				echo "false"
 			fi
		fi
	else
		echo "false" 
	fi

