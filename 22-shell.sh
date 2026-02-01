#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/va/log/shell-script/$0.log"
 if [ $USER_ID -ne 0 ]; then
   echo " please run this script as root user access" &>>$0.log
   exit 1
 fi  
  mkdir -p $LOGS_FOLDER

 VALIDATE(){
 if [ $1 -ne 0 ]; then
   echo "$2  FAILURE"
   exit 1
else
   echo " $2 SuCCESS"
 fi
 }

dnf install nginx -y
VALIDATE $? "installing nginx" &>>$0.log

dnf install mysql -y
VALIDATE $? "installing mysql" &>>$0.log

dnf install nodejs -y
VALIDATE $? "installing nodejs" &>>$0.log