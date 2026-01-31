#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
  echo "please run this script with root user access"
fi
echo "installing nginx"

dnf install nginx -y