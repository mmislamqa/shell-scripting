#!/bin/bash

case $1 in
frontend)
  echo Installing Frontend
  echo Completed Installing Frontend
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