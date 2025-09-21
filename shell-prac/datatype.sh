#!/bin/bash

number1=200
number=400

sum=$(($number+$number1))

echo "Total is=${sum}"

leaders=("Mike" "Tom" "Joe")

echo "leaders are=${leaders[@]}"

echo "leaders are=${leaders[@]}"

echo "First Leader is=${leaders[0]}"

echo "Second leader is=${leaders[1]}"

echo "Third Leader is=${leaders[2]}"