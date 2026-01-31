#!/bin/bash

# USER_ID=$(id -u)
# if [ $USER_ID -ne 0 ]; then
#   echo "please run this script with root user access"
#   exit 1
# fi
# echo "installing nginx"

# dnf install nginx -y

# if [ $? -ne 0 ]; then
#  echo "installing nginx ... FAILURE"

#  else 
#   echo "installing nginx... SUCCESS"

#   fi

# USER_ID=$(id -u)

# if [ $USER_ID -ne 0 ]; then
#  echo "please run this script with root user access"
#  exit 1
#  fi

#  echo "installing nginx"

#  dnf install nginx -y

#  if [ $? -ne o ]; then
#   echo " installing nginx FAILURE"

#   else

#   echo "insatlling nginx SUCCESs"

#   fi

USER_ID=$(sudo id -u)
# echo "user id is $USER_ID"
# ROOT_ID=$(sudo id -u)
# echo "root id is $ROOT_ID"

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

 echo "installing mysql FAILURE"

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






