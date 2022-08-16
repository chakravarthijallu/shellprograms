#!/bin/bash
read -p "Enter Range:"
i=0
sum=0
while [ $i -le $REPLY ] 
do
	sum=$[sum+i]
	i=$[i+2]
done
printf "sum:%d\n" $sum
