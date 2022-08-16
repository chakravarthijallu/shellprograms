#!/bin/bash
read -p "n: " N
COUNTER=1
MUL=0
while [ $COUNTER -le 10 ]
do
    MUL=$[COUNTER*N]
    printf "\t %2d * %2d = %2d \n" $N $COUNTER $MUL
    COUNTER=$[COUNTER+1] 
done