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

dnf list installed mysql

if [ $? -ne 0 ]; then
   dnf install mysql -y
   validate $? "mysql"
else
  echo -e "mysql already installed .... $Y Skipping $N"
fi

dnf list installed nginx

if [ $? -ne 0 ]; then
  dnf install nginx -y
  validate $? "nginx"

else
  echo -e "nginx already installed .... $Y Skipping $N"
fi
