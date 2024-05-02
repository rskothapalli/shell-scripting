#!/bin/bash
USERID=(id -u)
SCRIPT_NAME=(echo $0 | cut -d "." 1f)
TIMESTAMP=(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ..$R FAILURE $N"
    else
        echo -e "$2 ..$G SUCCESS $N"
    fi
}

if [ $1 -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1
else
    echo "You are a super user"
fi

for i in $@
do
    echo "Packages to install: $i"
    dnf list installed $i &>>LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i is already installed..$Y SKIPPING $N"
    else
        dnf install $i -y &>>LOGFILE
        VALIDATE $? "Installation of $i"
    fi
done
