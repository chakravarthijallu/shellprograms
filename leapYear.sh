#!/bin/bash
read -p "enter year: " YEAR
LEAP1=$[YEAR%4]
LEAP2=$[YEAR%100]
LEAP3=$[YEAR%400]
if [ $LEAP1 -eq 0 -a $LEAP2 -ne 0 ]
then
   printf "$YEAR is a LEAP YEAR \n"
elif [ $LEAP3 -eq 0 ]
then
   printf "$YEAR is a LEAP YEAR\n"
else 
   printf "$YEAR is not LEAP YEAR\n"
fi