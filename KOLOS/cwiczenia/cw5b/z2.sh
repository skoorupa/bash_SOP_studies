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

echo -n "" > $2

maxwords=0
lines=$(cat $1 | wc -l)
while read -r line
do
	words=$(echo $line | wc -w)
	if [ $maxwords -lt $words ]
	then
		maxwords=$words
	fi
done < $1

for (( i=1; $i<=$maxwords; i++ ))
do
	kolumna=$(cut -d" " -f$i $1)
	while read -r line
	do
		echo -n "$line " >> $2
	done <<< $kolumna
	echo "" >> $2
done
