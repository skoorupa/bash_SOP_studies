#!/bin/bash
var=1
while [ "$#" -gt 0 ]
do
	echo "Wartosc zmiennej $var to $1"
	shift
	((var++))
done
