#!/bin/bash

echo -n "Podaj nazwe uzytkownika"
read nazwa
echo "Witaj $nazwa"
if [ -e "/home/$nazwa" ]
then
	echo "Twój katalog domowy to /home/$nazwa"
	ls "/home/$nazwa"
else
	echo "Nie masz katalogu domowego :("
	exit 1
fi
