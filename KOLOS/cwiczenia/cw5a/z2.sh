#!/bin/bash

echo "Podaj nazwe pliku"
read newfile
for file in *
do
	if [ -r $file ]
	then
		linie=$(cat $file | wc -l)
		polowa=$(expr $linie / 2)
		index=0
		while read -r linia
		do
			index=$(($index+1))
			if [ $index -eq $polowa ]
			then
				echo $linia
				echo $linia >> $newfile
			fi
		done < $file
	fi
done
