#!/bin/bash

if [ $USER_ID -ne 0 ]; then
 echo "please run this script as root user access" 
 exit 1
 fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
   echo "$2 .... FAILURE"
 exit 1
 else 
   echo "$2 .. nginx SUCCESS"
 fi
}
 
VALIDATE() $? "installing nginx"

 dnf install nginx -y

VALIDATE() $? "installing mysql"

 dnf install mysql -y

VALIDATE() $? "installing nodejs"

 dnf install nodejs -y
