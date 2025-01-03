#!/bin/bash

USERID=$(id -u)
validate(){
    if [ $1 -ne 0 ];then
        echo "Error:$2 installing failure"
        exit 1
    else
        echo "Success:$2 installing success"
    fi
}

if [ $USERID -ne 0 ];then

    echo "You must have the sudo access to execute this"
    exit 1
fi

dnf list installed python
if [ $? -ne 0 ];then

    dnf install python -y
  validate $? "installing phython"
else 
    echo "already installed"
fi

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install mysql
    validate $? "installing mysql"
else
    echo "already mysql installed"
fi