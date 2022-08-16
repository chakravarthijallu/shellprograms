#!/bin/bash
read -p "Enter array: " -a ARRAY
POSITION=1
LEN=${#ARRAY[@]}
SUM=0
while [ $POSITION -lt $LEN ]
do
  ELE=${ARRAY[POSITION]}
  SUM=$[SUM+ELE]
  POSITION=$[POSITION+2]
done
printf "sum of odd positions : %d\n" $SUM 