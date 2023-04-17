#!/bin/bash
plik=$1
shift
kolumny=$1
shift
for [ i in $@ ]
do
	kolumny+=$1
	shift
done
cat $plik | cut -d ',' -f $kolumny
