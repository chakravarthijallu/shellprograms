#!/bin/bash
read -p "n: " N
COUNTER=1
FACTORAIL=1
while [ $COUNTER -le $N ] 
do
  FACTORAIL=$[FACTORAIL*COUNTER]
  COUNTER=$[COUNTER+1]
done
printf "\t FACTORIAL OF NUMBER : %d\n" $FACTORAIL