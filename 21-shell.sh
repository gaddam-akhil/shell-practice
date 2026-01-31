#!/bin/bash

USER_ID=$(id -u)
 if [ $USER_ID -ne 0 ]; then
echo "please run the script with root user access"
exit 1
fi

VALIDATE(){
if [ $1 -ne 0 ]; then
 echo "$2....FAILURE"
 exit 1
else
 echo "$2...SUCCESS"
fi
}

dnf install nginx -y
VALIDATE $? "installing nginx"

dnf install nodejs -y
VALIDATE $? "installing nodejs"

dnf install mysql -y
VALIDATE $? "installing mysql"
