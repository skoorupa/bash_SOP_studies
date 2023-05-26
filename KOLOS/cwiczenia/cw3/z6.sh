#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Podaj 1 argument"
	exit 1
elif [[ $1 =~ ^[0-9]+$ ]]
then
	for ((liczba=$1;$liczba>=1;liczba--))
	do
		echo $liczba
	done
else
	echo "Podaj liczbę naturalną dodatnią!"
	exit 1
fi
