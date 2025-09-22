#!.bin/bash

userid=$(id -u)

if [$userid -ne 0 ]; then

   echo "run with root user"

exit 1

fi

dnf install mysql -y

elif [$userid -ne 0]; then

   echo "run with sudo user"

exit 1

else

   echo "mysql install sucess"

fi