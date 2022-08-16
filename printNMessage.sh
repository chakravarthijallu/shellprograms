#!/bin/bash
COUNTER=1
while [ $COUNTER -le 5 ]
do 
  printf "Good Morning\n"
  COUNTER=$[COUNTER+1]
done
printf "bye!\n"