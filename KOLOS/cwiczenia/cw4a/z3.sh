#!/bin/bash

katalogi=$(ls -d */)

for katalog in $katalogi
do
	readable=0
	executable=0
	for plik in $(find $katalog -not -type d)
	do
		if [[ -r $plik ]]
		then
			((readable++))
		fi
		if [[ -x $plik ]]
		then
			((executable++))
		fi
	done

	if [[ $readable -ge 2 ]] && [[ $executable -ge 3 ]]
	then
		echo $katalog
	fi
done
