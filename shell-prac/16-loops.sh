#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "ERROR:: Execute script with root priveleges"
   exit 1
fi

validate(){

if [ $1 -ne 0 ]; then
  echo -e "ERROR:: $2 install $R failed $N"
  exit 1
else
  echo -e "$2 install $G success $N"
fi

}

for package in $@ 
do 
dnf list linstalled $package

if [ $? -ne 0 ]; then
  dnf install $package -y
  validate() $? "$package"
else
echo "$package already installed"
fi
done