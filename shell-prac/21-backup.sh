#!/bin/bash

userid=$(id -u)

source_dir=$1
dest_dir=$2

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
days=${3:-14} # if not provided considered as 14 days

if [ $userid -ne 0 ]; then
   echo "run with sudo previleges"
fi
log_dir=$(pwd) # log file directory
curr_file=$( echo $0 | cut -d "." -f1) # spliing the file name with .
log_file="$log_dir/$curr_file.log" # log file name
echo "$log_file"

if [ ! -d $source_dir ]; then #source directory validation
   echo "source directory: $source_dir does not exist"
else
  echo "directory exist: $source_dir"

fi

if [ ! -d $dest_dir ]; then #destination directory validation
   echo "dest directory: $dest_dir does not exist"
else
  echo "directory exist: $dest_dir"

fi

files=$( find $source_dir -name "*.log" -type f -mtime +$days)

if [ $files -ne 0 ]; then
   echo "no files present"
else
  echo "files found"
fi

