#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
  echo "ERROR: Please run this script as root user"
  exit 1
fi 

dnf install mysqll -y
