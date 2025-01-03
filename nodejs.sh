#!/bin/bash

USERID=$(id -u)
    if [ $USERID -ne 0 ];then
        echo "you must have the sudo access to excute this"
        exit 1

    fi

dnf list installed nodejs

if [ $? -ne 0 ];then

    dnf install nodejs -y
        if [ $? -ne 0 ];then
            echo "installing nodejs is failure"
            exit 1
        else
            echo "install nodejs successful"
        fi
else 
    echo "already installed nodejs"
fi