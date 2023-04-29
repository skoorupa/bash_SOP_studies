#!/bin/bash
echo -n "Podaj sciezke absolutna folderu: "
read folder
#wynik=$(ls $folder -lh)
#echo $wynik
ls $folder -lh > listing.lst
ls $folder -lh | grep -E "(.zip|.txt)$"
ls $folder -lh | grep -E "(.zip|.txt)$" | wc -l
