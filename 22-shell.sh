#!/bin/bash
set -e
trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR 
USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

 if [ $USER_ID -ne 0 ]; then
   echo -e " please run this script as root user access" | tee -a $LOGS_FILES
   exit 1
 fi  
  mkdir -p $LOGS_FOLDER

 VALIDATE(){
 if [ $1 -ne 0 ]; then
   echo -e "$2 $R FAILURE $N" | tee -a $LOGS_FILES
   exit 1
else
   echo -e " $2 $G SuCCESS $N" | tee -a $LOGS_FILES
 fi
 } 

for PACKAGE in $@
 do 
  dnf install $PACKAGE -y  &>> $LOGS_FILES 
 if [ $? -ne 0 ]; then
  echo "installing $PACKAGE"
  VALIDATE $? "installing $PACKAGE"
  else
  echo -e "already installed $PACKAGE...$Y skipping $N"
 fi
 done 