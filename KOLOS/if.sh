#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Podaj plik lub katalog"
elif [ -f $1 ]
then
	echo "$1 to plik"
elif [ -d $1 ]
then
	echo "$1 to katalog"
else
	echo "$1 to niewiadomo co"
fi
