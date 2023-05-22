#!/bin/bash
filename="$1"
shift

if echo "$filename" | grep -q "\.csv$"
then
	fields=$(echo "$@" | tr ' ' ',')
	cut -d',' -f"$fields" "$filename"
else
	echo "Plik nie ma rozszerzenia csv"
fi
