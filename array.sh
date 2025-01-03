#!/bin/bash

Movie=("Don" "pushpa" "lucky")

echo "First movie : ${Movie[0]}"
echo "2nd movie : ${Movie[1]}"
echo "print all movie :${Movie[@]}"

echo "print all the movie in one string :${Movie[*]}"
echo "prinit how many varaible are reflecting : ${Movie[#]}"