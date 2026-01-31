#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

# echo "hi"
# echo "hello"
# echoo "am akhil"
# echo "laddu"


USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USER_ID -ne 0 ]; then
 echo -e "$R please run this script as root user access $N" | tee -a $LOGS_FILES
exit 1
 fi

mkdir -p $LOGS_FOLDER


for PACKAGE in $@ 
do 
 dnf list installed $PACKAGE &>>$LOGS_FILES 
 if [ $? -ne 0 ]; then
echo "$PACKAGE not installed,installing now"
 dnf install $PACKAGE -y &>>$LOGS_FILES 
else
echo -e "$PACKAGE already installed, $Y skipping $N"
fi
done