#!/bin/bash

for numbers in $@; do

# Initialize max with the first element of the array
max=${numbers[0]}

# Iterate through the array starting from the second element
for (( i=1; i<${#numbers[@]}; i++ )); do
    current_number=${numbers[i]}
    # Compare current_number with max
    if (( current_number > max )); then
        max=$current_number
    fi
done


echo "The largest number in the array is: $max"
done