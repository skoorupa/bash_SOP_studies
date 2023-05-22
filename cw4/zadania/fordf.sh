#!/bin/bash

echo -n "Podaj nazwe elementu: "
read fof

if [ -e $fof ]
then
	echo "$fof istnieje"
	if [ -f $fof ]
	then
		echo "$fof jest plikiem"
	elif [ -d $fof  ]
	then
		echo  "$fof jest katalogiem"
	else
		echo "$fof jest nie wiadomo czym"
	fi
else
	echo "$fof nie istnieje"
fi
