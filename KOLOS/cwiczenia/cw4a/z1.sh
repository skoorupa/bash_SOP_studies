#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Podaj dwie liczby całkowite"
	exit 1
elif [[ $1 =~ ^-?[0-9]+$ && $2 =~ ^-?[0-9]+$ ]]
then
	if [ $1 -gt $2 ]
	then
		echo "1"
	elif [ $1 -lt $2 ]
	then
		echo "-1"
	else
		echo 0
	fi
else
	echo "Podane argumenty nie sa liczbami calkowitymi"
fi
