#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/va/log/shell-script/$0.log"
 if [ $USER_ID -ne 0 ]; then
   echo " please run this script as root user access" &>>$LOGS_FILES
   exit 1
 fi  
  mkdir -p $LOGS_FOLDER

 VALIDATE(){
 if [ $1 -ne 0 ]; then
   echo "$2  FAILURE" &>>$0LOGS_FILES
   exit 1
else
   echo " $2 SuCCESS" &>>$0LOGS_FILES
 fi
 }

dnf install nginx -y
VALIDATE $? "installing nginx" &>>$0LOGS_FILES

dnf install mysql -y
VALIDATE $? "installing mysql" &>>$LOGS_FILES

dnf install nodejs -y
VALIDATE $? "installing nodejs" &>>$LOGS_FILES