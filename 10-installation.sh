#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then 
  echo "Please run this script with super user"
  exit 1
else
  echo "You are a super user"


  dnf install msql -y
