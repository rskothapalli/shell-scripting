#!/bin/bash
USERID=(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this script as a root"
  set -e
else 
  echo "You are a super user, proceed for installation"
fi
 
 dnf install mysql -y

 if [ $? -ne 0 ]
 then
    echo "Installation failed"
  set -e
  else 
    echo "Installation is success"
  fi

  dnf install git -y

  if [ $? -ne 0 ]
  then
    echo "Installation fo git is failed"
    set -e
  else
    echo "Installation of git is success"
  fi




