#!/bin/bash

if [ $USER_ID -ne 0 ]; then
 echo "please run this script as root user access"
 exit 1
 fi

 echo "installing nginx"

 dnf install nginx -y
echo "$?"
if [ $? -ne 0 ]; then

 echo "installing nginx FAILURE"

 exit 1

 else 

 echo "installing nginx SUCCESS"

 fi

dnf install mysql -y

if [ $? -ne 0 ]; then

 echo "installing mysql  FAILURE"

 exit 1

 else 

 echo "installing mysql SUCCESS"

 fi

dnf install nodejs -y

if [ $? -ne 0 ]; then

 echo "installing nodejs FAILURE"

 exit 1

 else 

 echo "installing nodejs SUCCESS"

 fi