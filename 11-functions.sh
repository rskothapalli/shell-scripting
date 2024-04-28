#!/bin/bash

USERID=$(id -u)

VALIDATE() {
if [ $? -ne 0 ]
then
  echo "$2 failed"
  exit 1
  
else
  echo "$2 success"
fi
}

if [ $USERID -ne 0 ]
then
  echo "Please run this script as root user"
else 
  echo "You are a root user"
fi

dnf install mysql -y

VALIDATE $? "INstalling mysql"

dnf install git -y
VALIDATE $? "INstalling git"


