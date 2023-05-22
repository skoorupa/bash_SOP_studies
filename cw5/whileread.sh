#!/bin/bash

for f in *
do
	if [ -f "$f" ]
	then
		while read -r line
		do
			echo "$line"
		done < "$f" 1>> plik.txt
	fi
done
