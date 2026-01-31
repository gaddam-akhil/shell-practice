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
     echo -e "$R please run the script with root user access $N" | tee -a $LOGS_FILES
     exit 1
fi
     mkdir -p $LOGS_FOLDER
#      VALIDATE(){
# if [ $1 -ne 0 ]; then
#     echo -e "$2....$R FAILURE $N" | tee -a $LOGS_FILES
#     exit 1
# else
#     echo -e "$2...$G SUCCESS $N" | tee -a $LOGS_FILES
# fi
# }

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
  #VALIDATE $? "installing $PACKAGE" 
else
  echo -e "$PACKAGE already installed....$Y skipping $N"
  fi
done
