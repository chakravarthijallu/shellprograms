#!/bin/bash
read -p "n: " N
COUNTER=2
REM=0
while [ $COUNTER -lt $N ]
do
  REM=$[N%COUNTER]
  if [ $REM -eq 0 ]
  then
     echo "$N is not a prime number"
     exit 0
  fi
  COUNTER=$[COUNTER+1]
done
echo "$N is prime number"
