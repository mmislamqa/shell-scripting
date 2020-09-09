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
#Some Function
Status_Check(){
   case $? in
  0)
    echo -e "\e[1;33mSUCCESS\e[0m"
    ;;
  *)
    echo -e "\e[1;33mFAILURE\e[0m"
    exit 3
    ;;
  esac
}


#Manin Program
case $1 in
frontend)
  echo -e "\e[31m>>>>>>>>>>>>>>>>>>>>>>>>>Installing Nginx<<<<<<<<<<<<<<<<<<<<<<<<<<<<\e[0m"
  yum install nginx -y
Status_Check
systemctl enable nginx
systemctl start nginx

   echo -e "\e[31m>>>>>>>>>>>>>>>>>>>>>>>>>>Starting Nginx<<<<<<<<<<<<<<<<<<<<<<<<<<<<\e[0m"
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
  exit 2
  ;;
esac