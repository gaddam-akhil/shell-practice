#!/bin/bash

USER_ID=$(id -u)
 if [ $USER_ID -ne 0 ]; then
echo "please run the script with root user access"
fi
echo "installing inginx"
dnf install nginx