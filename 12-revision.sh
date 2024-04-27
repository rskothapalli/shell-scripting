#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "PLease run this script with root privilages"
  exit 1
else
  echo "You are a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
  echo "mysql installatin is failed"
else
  echo "mysql installation is success"
fi

