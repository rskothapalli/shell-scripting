#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then 
  echo "Please run this script with super user"
  exit 1
else
  echo "You are a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
  echo "mysql installation failed"
  exit 1
else
  echo "mysql installation was success"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
  echo "git installation failed"
  exit 1
else 
  echo "git installation is success"
fi




