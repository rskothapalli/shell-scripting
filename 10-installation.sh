#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then 
  echo "Please run this script with super user"
  exit 1
else
  echo "You are a super user"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
  echo "Git installation failed"
else
  echo "git installation was success
fi




