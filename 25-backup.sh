#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


 if [ $USER_ID -ne 0 ]; then
     echo -e "$R please run the script with root user access $N" 
     exit 1
fi
     
   mkdir -p $LOGS_FOLDER

   USAGE(){
       echo -e"$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR>[default 14 days] $N"
       exit 1
   }

   if [ $# -lt 2 ]; then
     USAGE
   fi
   