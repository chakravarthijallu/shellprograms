#!/bin/bash
read -p "n: " N
REM=0
TEMP=$[N]
REVERSE=0
while [ $N -gt 0 ]
do
  REM=$[N%10]
  N=$[N/10]
  if [ $REVERSE -eq 0 ]
  then
      REVERSE=$[REM]
  else
      REVERSE=$[REVERSE*10]
      REVERSE=$[REVERSE+REM]
  fi
done

printf "ORIGINAL VALUE : %d REVERSE VALUE: %d\n" $TEMP $REVERSE