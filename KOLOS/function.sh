#!/bin/bash

function add_numbers {
	result=$(($1+$2))
	echo "The sum of $1 and $2 is $result"
}

function div_numbers {
	if [ "$2" -eq 0 ]
	then
		echo "Divide by 0 error"
		exit 1
	else
		result=$(($1 / $2))
		echo "The division of $1 and $2 is $result"
	fi
}

if [ "$#" -ne 3 ]
then
	echo "Wrong number of arguments. $0 needs 3 arguments"
else
	if [ "$2" == "add" ]
	then
		add_numbers $1 $3
	elif [ "$2" == "div" ]
	then
		div_numbers $1 $3
	else
		echo "No such operator"
	fi
fi
