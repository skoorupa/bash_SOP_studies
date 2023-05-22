#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Podano inna ilosc argumentow niz 2"
	exit 0
fi
if [ -r $1 ]
then
	input=$1
	output=$2
	touch $output

	IFS=" "
	while read -ra line
	do
		
	done
else
	echo "$1 nie jest plikiem"
	exit 0
fi




