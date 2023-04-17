#!/bin/bash

if [ "$#" -ne 2 ]
then
	echo "Incorrect number of parameters. $0 needs 2 arguments"
	exit 1
fi

if [ "$1" -eq 1 ]
then
	mkdir "$2"
	echo "Folder $2 created"
elif [ "$1" -eq 2 ]
then
	rm -r "$2"
	echo "Folder $2 deleted"
else
	echo "No such arguments"
	exit 2
fi
