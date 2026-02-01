#!/bin/bash

USER_ID=$(id -u)
 if [ $USER_ID -ne 0 ]; then
   echo " please run this script as root user access"
 fi  
exit 1
echo "installing nginx"
dnf install nginx -y