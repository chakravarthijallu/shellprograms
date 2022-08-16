#!/bin/bash
read -p "n: " N
A=0
B=1
TEMP=0
COUNTER=1
while [ $COUNTER -lt $N ]
do
  printf "\t %2d" $A
  TEMP=$[A+B]
  A=$[B]
  B=$[TEMP]
  COUNTER=$[COUNTER+1]
done
echo ""