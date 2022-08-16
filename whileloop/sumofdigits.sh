#!/bin/bash
read -p "n: " N
SUM=0
T=$N
while [ $N -ne 0 ]
do
  REM=$[N%10]
  SUM=$[SUM+REM]
  N=$[N/10]
done
printf "Original Number is : %d \t Sum of digits is : %d\n" $T $SUM