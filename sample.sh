#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)

echo "$USERID"
echo "$TIMESTAMP"
echo "$SCRIPT_NAME"

