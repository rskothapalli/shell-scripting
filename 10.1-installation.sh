#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this script as root user"
else 
  echo "You are a root user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
  echo "mysql Installation failed"
  set -e 
else 
  echo "installation success"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
  echo "git installatino failed"
  set -e
else
  echo "git installation success"
fi


