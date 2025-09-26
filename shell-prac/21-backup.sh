#!/bin/bash

userid=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $userid -ne 0 ]; then
   echo "run with sudo previleges"
fi
log_dir=$(pwd) # log file directory
curr_file=$( echo $0 | cut -d "." -f1) # spliing the file name with .
log_file="$log_dir/$curr_file.log" # log file name
echo "$log_file"