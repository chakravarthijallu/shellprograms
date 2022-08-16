#!/bin/bash
read -p "n: " N
TEMP=$N
SUM=0
while [ $TEMP -ne 0 ]
do
  REM=$[TEMP%10]
  SUM=$[(REM*REM*REM)+SUM]
  TEMP=$[TEMP/10]
done

if [ $SUM -eq $N ]
then 
   printf "$N is Amstrong Number\n"
else
   printf "$N is not Amstrong Number\n"
fi