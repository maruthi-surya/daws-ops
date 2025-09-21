#!bin/bash

echo "All Variables Paased $@"
echo "All Variables Paased $*"

echo "Script_Name=$0"

echo "current directory=$PWD"

echo "Who is running the scrpit=$USER"

echo "home directory=$HOME"

echo "PID of this script=$$"

sleep 25 &

echo "PID of last command executed in the back end is=$!"