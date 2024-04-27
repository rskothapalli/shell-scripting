#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this script as root user"
else 
  echo "You are a root user"
fi
exit 1

dnf install mysql -y
