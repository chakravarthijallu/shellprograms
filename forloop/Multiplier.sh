#!/bin/bash
read -p "n: " N
read -p "Divisor: " DIVISOR
for((I=1;I<=N;I++))
do
  MUL=$[I%DIVISOR]
  if [ $MUL -eq 0 ]
  then
     printf " $I \t"
  fi
done
echo ""
