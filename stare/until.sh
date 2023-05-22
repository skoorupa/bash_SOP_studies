#!/bin/bash
count=10
until [ $count -le 0 ]
do
	printf "Counter: $count\n"
	((count--))
done
