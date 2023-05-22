#!/bin/bash

PLIK="$1"
function policz_slowa () {
	echo -n "ilosc slow w pliku: "
	wc -w $PLIK
}

function policz_linie () {
	echo -n "ilosc linii w pliku: "
	wc -l $PLIK
}

policz_slowa
policz_slowa > words.txt
policz_linie
policz_linie > lines.txt
