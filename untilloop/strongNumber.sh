#!/bin/bash
read -p "n: " N
TEMP=$N
SUM=0
until [ $N -eq 0 ]
do
  REM=$[N%10]
  FACT=1
  for ((I=1;I<=REM;I++))
  do
    FACT=$[FACT*I]
  done
  SUM=$[SUM+FACT] # 145 = 1! + 4! + 5! = 1 + 24 + 120 = 145
  N=$[N/10]
done

if [ $TEMP -eq $SUM ]
then
   printf "$TEMP is Strong Number\n"
else
   printf "$TEMP is not Strong Number\n"
fi