#!/bin/bash

if [ $# -lt 2 ]
then
	echo "Podaj co najmniej 2 argumenty"
	exit 1
elif ! [ -r $1 ] || ! [ -f $1 ]
then
	echo "Podaj plik ktorego mozna odczytac"
	exit 1
elif ! [[ $1 =~ .csv$ ]]
then
	echo "Podaj plik .csv"
	exit 1
else
	file=$1
	shift
	fields="$1"
	shift

	for arg in $@
	do
		fields="$fields,$arg"
	done

	cut -d, -f$fields $file
fi
