#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then 
  echo "You are a super user"
else
  echo "Please run this script with root priviliges"

  dnf install msql -y
  