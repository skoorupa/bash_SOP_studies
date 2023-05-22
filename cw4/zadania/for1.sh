#!/bin/bash

suma=0
n=10
t=""

for (( i=0; "$i"<="$n"; i++ ))
do
	if [ -z "$t" ]
	then
		t="$i"
	else
		t="$t+$i"
	fi
	let suma+=i
	let i++
done
echo "Suma($t)=$suma"
