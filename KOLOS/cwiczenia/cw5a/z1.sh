#!/bin/bash

if [ $# -ne 3 ]
then
	echo "Podaj dokładnie trzy argumenty"
	exit 1
elif [ -r $1 ] && [ -r $2 ]
then
	diff $1 $2
	diff $1 $2 > $3
else
	echo "Nie mozna odczytac ktoregos pliku"
	exit 1
fi
