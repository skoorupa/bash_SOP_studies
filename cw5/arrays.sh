#!/bin/bash

fruits=("apple" "pineapple" "orange" "cherry" "banana" "kiwi")

echo "${fruits[@]}"
echo "${fruits[2]}"
echo "${#fruits[@]}"

declare -a numbers=(1 2 3 4 5)

echo "${numbers[*]}"
echo "${numbers[2]}"
echo "${#numbers[*]}"
