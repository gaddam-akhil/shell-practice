#!/bin/bash


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

VALIDATE() {
    if [ $1 -ne 0 ]; then
   echo -e "$2 .... $R FAILURE $N" | tee -a $LOGS_FILES
exit 1
 else 
   echo -e "$2 .. $G SUCCESS $N" | tee -a $LOGS_FILES
 fi
}

for PACKAGE in $@ 
do 
 dnf list installed $PACKAGE &>>$LOGS_FILES 
 if [ $? -ne 0 ]; then
echo "$PACKAGE not installed,installing now"
 dnf install $PACKAGE -y &>>$LOGS_FILES 
 VALIDATE $? "$PACKAGE installing"
else
echo -e "$PACKAGE already installed, $Y skipping $N"
fi
done 