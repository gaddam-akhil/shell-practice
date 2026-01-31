#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e "$R helloworld $N, $Y iam learnig shell $N"





# USER_ID=$(id -u)

# LOGS_FOLDER="/var/log/shell-script"
# LOGS_FILES="/var/log/shell-script/$0.log"

# if [ $USER_ID -ne 0 ]; then
#  echo "please run this script as root user access" | tee -a $LOGS_FILES
# exit 1
#  fi

# mkdir -p $LOGS_FOLDER

# VALIDATE() {
#     if [ $1 -ne 0 ]; then
#    echo "$2 .... FAILURE" | tee -a $LOGS_FILES
# exit 1
#  else 
#    echo "$2 ..  SUCCESS" | tee -a $LOGS_FILES
#  fi
# }

# for PACKAGE in $@ 
# do 
#  dnf list installed $PACKAGE &>>$LOGS_FILES 
#  if [ $? -ne 0 ]; then
# echo "$PACKAGE not installed,installing now"
#  dnf install $PACKAGE -y &>>$LOGS_FILES 
#  VALIDATE $? "$PACKAGE installing"
# else
# echo "$PACKAGE already installed, echo -e "\e[33m skipping""
# fi
# done 