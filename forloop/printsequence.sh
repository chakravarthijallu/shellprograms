#!/bin/bash
read -p "n: " N
START=0
STEP=2
printf "Even Numbers\n"
for VAL in $(seq $START $STEP $N)
do
  printf " %2d \t" $VAL
done
echo
START=1
printf "Odd Numbers\n"
for VAL in $(seq $START $STEP $N)
do
  printf " %2d \t" $VAL
done
echo