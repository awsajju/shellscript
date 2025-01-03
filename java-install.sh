#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR: you must have the sudo access to execute the script"
exit 1
fi 

dnf list installed mysql
if [ $? -ne 0 ]; then

    dnf install mysql -y

        if [ $? -ne 0 ]; then

            echo "Error : installing mysql is failure "
            exit 1

        else 
            echo "installing mysql is success"

        fi
    else 
        echo "mysql already installed"
fi



