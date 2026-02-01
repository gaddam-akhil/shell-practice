#!/bin/bash

USER_ID=$(ud -u)
 if [ $USER_ID -ne 0 ]; then
   echo " please run this script as root user access"
 fi  

dnf install nginx -y