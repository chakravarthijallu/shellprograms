#!/bin/bash
read -p "Are you want Continue [YES|NO]: " NUM
COUNTER=1
until [ $NUM == "NO" ]
do
  printf "%2d\n" $COUNTER
  COUNTER=$[COUNTER+1]
  read -p "Are you want Continue [YES|NO]: " NUM
done