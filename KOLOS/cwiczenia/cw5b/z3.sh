#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Podaj plik jako argument"
	exit 1
fi

if [ ! -r $1 ]
then
	echo "Nie da sie odczytac pliku"
	exit 1
fi

plus_count=0
minus_count=0

while read -r line
do
	expr $line + 1 &>/dev/null
	if [[ $? -ne 0 ]]
	then
		echo -n
	elif [[ $line -gt 0 ]]
	then
		((plus_count++))
	elif [[ $line -lt 0 ]]
	then
		((minus_count++))
	fi
done < $1

echo $plus_count
echo $minus_count
