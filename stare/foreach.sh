#!/bin/bash
value=1
for args in "$@"
do
	echo "Argument $value ma wartosc: $args"
	((value++))
done
