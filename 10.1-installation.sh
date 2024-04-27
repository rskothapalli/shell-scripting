#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this script as root user"
else 
  echo "You are a root user"
fi
set -e

dnf install mysql -y
