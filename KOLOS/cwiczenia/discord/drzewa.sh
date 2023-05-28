#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Podaj dwa argumenty"
	exit 1
fi

if [ ! -r $1 ] || [ ! -r $2 ]
then
	echo "Nie da sie odczytac ktoregos katalogu"
	exit 1
fi

if [ ! -d $1 ] || [ ! -d $2 ]
then
	echo "Ktorys argument nie jest katalogiem"
	exit 1
fi

katalog1=$1
katalog2=$2

function check {
	pliki1=$(ls $1)
	pliki2=$(ls $2)
	countpliki1=$(ls $1 | wc -w)
	countpliki2=$(ls $2 | wc -w)

	if [ $countpliki1 -ne $countpliki2 ]
	then
		echo ""
}
