#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "ERROR:: Execute script with root priveleges"
   exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
  echo "ERROR:: Mysql install failed "
  exit 1
else
  echo "Mysql install success"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
  echo "nginx install failed"
  exit 1
else
  echo "nginx install sucess"
fi

