#!/bin/bash
#syntax for variables
a=10
b=abc
c=true
d=0.1

echo $a

A=(1 2 3 4 5 6 7 ABC 8 9 0)

echo INDEX0=${A[0]}
echo index7=${A[7]}


Date=$(date +%F)