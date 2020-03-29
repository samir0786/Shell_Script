#!bin/bash -x
Die=1;
declare -A dies
	min=6
	max=1;
while [[ Dies["$Die"] -ne 10 ]]
do
	Die=$(($((RANDOM %6))+1))
	Dies["$Die"]=$((${Dies["$Die"]}+1))
done
	for((Die=1;Die<=6;Die++))
do
	if [[ ${Dies["$Die"]} -gt ${Dies["$max"]} ]]
	then
		max=$Die
	fi
	if [[ ${Dies["$Die"]} -lt ${Dies["$min"]} ]]
	then 
		min=$Die
	fi
done
echo ${Dies[@]}
echo ${!Dies[@]}
echo $max $min
