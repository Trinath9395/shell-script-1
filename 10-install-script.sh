#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
  echo "ERROR: Please run this script as root user"
  exit 1
fi 

dnf install mysql -y

if [ $? -ne 0 ]; then 
  echo "Installing mysql is....FAILURE"
  exit 1
else
  echo "Installing mysql is....SUCCESS"
fi 

dnf install git -y 

if [ $? -ne 0 ]; then 
  echo "Installing git....FAILURE"
  exit 1 
else 
  echo "Installing git is....SUCCESS" 
fi 

