#!/bin/bash

USER_ID=$(id -u)

case $USER_ID in
0)
  echo "Start Installation"
  ;;
*)
  echo -e "\e[1;31mYou should be a root user to perform this script\e[0m"
  exit 1
esac

case $1 in
frontend)
  echo Installing Frontend
  yum install nginx -y
  ;;
catalogue)
  echo Installing catalogue
  echo Completed Installing catalogue
  ;;
cart)
  echo Installing cart
  echo Completed Installing cart
  ;;
*)
  echo "Invalid Input, Please enter following input"
  echo "Usage: $0 frontend|catalogue|cart"
  ;;
esac