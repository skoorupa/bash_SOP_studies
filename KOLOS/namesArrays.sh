#!/bin/bash

IFS=','

array=()
while read -ra line
do
	array+=(${line[@]})
done < fillarray.csv

for el in "${array[@]}"
do
	echo "$el"
done

