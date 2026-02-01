#!/bin/bash

USER_ID=$(id -u)
 if [ $USER_ID -ne 0 ]; then
   echo " please run this script as root user access"
   exit 1
 fi  
   echo "installing nginx"
   dnf install nginx -y
 if [ $? -ne 0 ]; then
   echo "installing nginx FAILURE"
 else 
   exit 1
   echo "installing nginx SuCCESS"
 fi
   dnf install mysql -y
 if [ $? -ne 0 ]; then
   echo "installing mysql FAILURE"
 else 
   exit 1
   echo "installing mysql SuCCESS"
 fi
   dnf install nginx -y
 if [ $? -ne 0 ]; then
   echo "installing nodejs FAILURE"
 else 
   exit 1
   echo "installing nodejs SuCCESS"
 fi