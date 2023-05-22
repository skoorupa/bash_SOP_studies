#!/bin/bash
echo "Podaj wartosc od 1 do 3"
read value

case $value in
1)
	echo "Wartosc to 1"
	;;
2)
	echo "Wartosc to 2"
	;;
3)
	echo "Wartosc to 3"
	;;
*)
	echo "Nie znam takiej wartosci"
	;;
esac

echo "Podaj wartosc od jeden do trzy"
read longvalue

case $longvalue in
[Jj][Ee][Dd][Ee][Nn])
	echo "Wartosc to 1"
	;;
[Dd][Ww][Aa])
	echo "Wartosc to 2"
	;;
[Tt][Rr][Zz][Yy])
	echo "Wartosc to 3"
	;;
*)
	echo "Nie znam takiej wartosci"
	;;
esac
