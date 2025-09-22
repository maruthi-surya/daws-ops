#!.bin/bash

echo "Enter the number:"

read number

if [ $number -lt 10 ]; then

  echo "The given number is less than 10"

elif [ $number -eq 10 ]; then

  echo "The given number is equal to 10"

else

  echo "The given number is greater than 10"

fi 