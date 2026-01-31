#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/var/log/shell-script/$0.log"

 if [ $USER_ID -ne 0 ]; then
     echo "please run the script with root user access" | tee -a $LOGS_FILES
     exit 1
fi
     mkdir -p $LOGS_FOLDER
     VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "$2....FAILURE" | tee -a $LOGS_FILES
    exit 1
else
    echo "$2...SUCCESS" | tee -a $LOGS_FILES
fi
}

# dnf install nginx -y &>> $LOGS_FILES 
# VALIDATE $? "installing nginx"

# dnf install nodejs -y &>> $LOGS_FILES
# VALIDATE $? "installing nodejs"

# dnf install mysql -y &>> $LOGS_FILES
# VALIDATE $? "installing mysql"

for PACKAGE in $@
do
  dnf install $PACKAGE -y &>> $LOGS_FILES
if [ $? -ne 0 ]; then
  echo "$PACKAGE is not installed, installing now"
  VALIDATE $? "installing $PACKAGE" 
else
  echo "$PACKAGE already installed....skipping"
done
