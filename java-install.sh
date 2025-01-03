#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR: you must have the sudo access to execute the script"
exit 1
fi 

dnf list installed java
if [ $? -ne 0 ]; then

 dnf install java -y

    if [ $? -ne 0 ]; then

        echo "Installing java is fialure"
        exit 1
        else
        echo "installing java is success"
        fi
else 
echo "java already installed"
fi
