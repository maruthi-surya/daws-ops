#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "ERROR:: Execute script with root priveleges"
   exit 1
fi

validate(){

if [ $1 -ne 0 ]; then
  echo "ERROR:: $2 install failed "
  exit 1
else
  echo "$2 install success"
fi

}

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

