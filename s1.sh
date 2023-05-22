#!/bin/bash

if [ $# -eq 0 ]
then
        echo -n "Podaj liczbe: "
        read A
else
        A="$1"
fi

expr "$A" + 0 > /dev/null  2> /dev/null
if [ $? -ne 0 ]
then
        echo "$A to nie liczba"
        exit 1
fi

let A++
echo "Wartosc zmiennej A = $A"

exit 0
