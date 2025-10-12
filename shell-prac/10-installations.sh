#!.bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo "run with root user"
exit 1
fi

dnf list installed mysql 

if [ $? -ne 0 ]; then
  echo "mysql not available proceed with installation"
fi

dnf install mysql-server -y

if [ $? -ne 0 ]; then
 echo "mysql install failed"
else
   echo "mysql install sucess"
fi

dnf list installed nginx

if [ $? -ne 0 ]; then
  echo "nginx not available proceed with installation"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
   echo "nginx install failed"
else
  echo "nginx install success"
fi
done
  