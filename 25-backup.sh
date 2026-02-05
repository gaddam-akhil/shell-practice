#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILES="/var/log/shell-script/backup.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #14 days is the default value, if the user not supplied

 if [ $USER_ID -ne 0 ]; then
     echo -e "$R please run the script with root user access $N" 
     exit 1
fi
     
   mkdir -p $LOGS_FOLDER

   USAGE(){
       echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR>[default 14 days] $N"
       exit 1
   }

   log(){
     echo -e "$G $(date "+%y-%m-%d %H:%M:%S") | $1 $N" | tee -a $LOGS_FILES
   }


   if [ $# -lt 2 ]; then
     USAGE
   fi

   if [ ! -d "$SOURCE_DIR" ]; then
      echo -e "$R SOURCE DIRECTORY :: $SOURCE_DIR does not exist $N"
      exit 1   
   fi

   if [ ! -d "$DEST_DIR" ]; then
      echo -e "$R DEST DIRECTORY :: $DEST_DIR does not exist $N"
    
      exit 1
   fi

#find the files
  FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)

  log "backup started"
  log "source directory : $SOURCE_DIR"
  log "destination directory : $DEST_DIR"
  log "Days : $DAYS"

 if [ -z "${FILES}" ]; then
    log "no file to archieve....... $Y Skipping $N"
 else
    #app-logs-$TIME-stamp.zip
    log "files found to archieve : $FILES"
    TIMESTAMP=$(date +%F-%H-%M-%S)
    ZIP_FILE_NAME="$DEST_DIR/app-logs-$TIMESTAMP.tar.gz"
    echo "archieve name : $ZIP_FILE_NAME"
    find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS | tar -zcvf $ZIP_FILE_NAME
#check archieve is succes or not
if [ -f $ZIP_FILE_NAME ]; then
   log "archeival is ... $G success $N"

while IFS= read -r filepath;
do
  # Process the each line (here, we just print it)
  echo "deleting file: $filepath"
  rm -f $filepath
  log "deleting file: $filepath"
done <<< $FILES #input which file to read

 else
   log "archieval is ... $R failure $N"
   exit 1
   fi
fi

