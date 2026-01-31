#!/bin/bash

# USER_ID=$(id -u)
# if [ $USER_ID -ne 0 ]; then
#   echo "please run this script with root user access"
#   exit 1
# fi
# echo "installing nginx"

# dnf install nginx -y

# if [ $? -ne o ]; then
#  echo "installing nginx ... FAILURE"

#  else 
#   echo "installing nginx... SUCCESS"

#   fi

USER_ID=$(id -u)
echo "show you id $USER_ID"
ROOT_ID=$(sudo id -u)
 echo "show root id $ROOT_ID"

if [ $USER_ID -ne 0 ]; then
 echo "please run this script with root user access"
 exit 1
 fi

 echo "installing nginx"

 dnf install nginx -y