#!/bin/bash
#Getting input from users
#1 While executing
read -p 'Enter your name: ' name
echo "Hello $name, Welcome to USA"

#2 Before Executing

echo Script name = $0
echo First Argument = $1
echo second Argument = $2
echo All arguments = $*
echo  All Arguments = $@
echo Number of Arguments = $#