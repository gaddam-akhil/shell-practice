#!/bin/bash

USER_ID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/var/log/shell-script/$0.log"

if [ $USER_ID -ne 0 ]; then
 echo "please run this script as root user access" | tee -a $LOGS_FILES
exit 1
 fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
   echo "$2 .... FAILURE" | tee -a $LOGS_FILES
exit 1
 else 
   echo "$2 ..  SUCCESS" | tee -a $LOGS_FILES
 fi
}

dnf install nginx -y &>>$LOGS_FILES
VALIDATE $? "installing nginx"

dnf install mysql -y &>>$LOGS_FILES
VALIDATE $? "installing mysql"

dnf install nodejs -y &>>$LOGS_FILES
VALIDATE $? "installing nodejs" 