#!/bin/bash

number=$1

if [ $number -lt 10 ]; then

   echo "The given number is less than $number"

elif [ $number -eq 10 ]; then

  echo "The given number is equal to $number"

else

  echo "The given number is greater than to $number"

fi   
