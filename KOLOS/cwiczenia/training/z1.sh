#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Podaj dwa argumenty"
	exit 1
fi

if [ ! -r $1 ]
then
	echo "$1 nie jest odczytywalny"
	exit 1
fi

echo -n > $2

maxwords=0
lines=$(cat $1 | wc -l)
while read -r line
do
	words=$(echo $line | wc -w)
	if [ $maxwords -eq 0 ]
	then
		maxwords=$words
	elif [ $maxwords -ne $words ]
	then
		echo "Niepoprawna macierz!"
		exit 1
	fi
done < $1

for (( column=1; $column<=$maxwords; column++ ))
do
	kolumna=$(cut -d" " -f$column $1)
	while read -r line
	do
		echo -n "$line " >> $2
	done <<< $kolumna
	echo "" >> $2
done
