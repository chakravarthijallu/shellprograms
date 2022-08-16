#!/bin/bash
read -p "enter your name: " NAME
read -p "enter your age: " AGE

if [ $NAME == "Sunny" ]
then
   if [ $AGE -gt 18 ]
   then
       printf "Hi Sunny your eligible to vote \n"
   else 
       printf "Hi Sunny your not eligible to vote \n"
   fi
else 
   if [ $AGE -gt 18 ]
   then
       printf "Hi $NAME your eligible to vote \n"
   else
       printf "Hi $NAME your not eligible to vote \n"
   fi
fi



