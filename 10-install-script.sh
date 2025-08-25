#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
  echo "ERROR: Please run this script as root user"
fi 

dnf install mysqll -y
