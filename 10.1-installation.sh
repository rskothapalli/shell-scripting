#!/bin/bash

USERID=$(id -u)

if [ $USERID -nq 0 ]
then
  echo "Please run this script as root user"
else 
  echo "You are a root user"

dnf install mysql -y
