#!/bin/bash

USERID=$(id -u)

VALIDATE() {

echo "Exit status: $1"
echo "What are you doing: $2"

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


