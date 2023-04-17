#!/bin/bash
echo -n "Podaj username: "
read name
if [ $name == $(whoami) ]
then
	echo "Witaj $name"
	echo "Twoj katalog domowy: $HOME"
else
	echo "Nie jestes obecnie zalogowany"
	exit 1
fi
