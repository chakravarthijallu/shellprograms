#!/bin/bash
read -p "n: " N
COUNTER=1
REM=0
while [ $COUNTER -le $N ]
do
  REM=$[COUNTER%2]
  if [ $REM -eq 0 ]
  then 
      printf "\t $COUNTER"
  fi
  COUNTER=$[COUNTER+1]
done
printf "\nbye!\n"