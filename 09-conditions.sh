#!/bin/bash

# NUMBER=25
# if [ $NUMBER -gt 20 ]; then
#   echo "given number: $NUMBER is greater than 20"
# fi

# NUMBER=$1
# if [ $NUMBER -gt 20 ]; then
#    echo "given number : $NUMBER is greater than 20"
#  else
#    echo "given number : $NUMBER is less than 20"
#  fi
NUMBER=$1
if [ $NUMBER -gt 20 ]; then
 echo "given number: $NUMBER is greter than 20"
elif [ $NUMBER -eq 20 ]; then 
 echo "given numer: $NUMBER is equal to 20"
else
 echo "given $NUMBER: is less than to 20"
 fi