#!/bin/bash
read -p "Enter Array: " -a NUMBERS
BIG=0
S_BIG=0

for NUM in ${NUMBERS[@]}
do
  if [ $NUM -gt $BIG ]
  then
      S_BIG=$BIG
      BIG=$NUM
  elif [ $NUM -gt $S_BIG -a $NUM -lt $BIG ]
  then
      S_BIG=$NUM
  fi
done
echo "2nd Big Number : $S_BIG"

: '
read -p "Enter Array: " -a ARRAY
ROW=${#ARRAY[@]}
for ((I=0;I<$ROW;I++))
do
  COLUMN=$[ROW-I-1]
  for ((J=0;J<$COLUMN;J++))
  do
    K=$[J+1]
    if [ ${ARRAY[$J]} -lt ${ARRAY[$K]} ]
    then
        TEMP=${ARRAY[$J]}
        ARRAY[$J]=${ARRAY[$K]}
        ARRAY[$K]=$TEMP
    fi
  done
done
printf "First & Second Biggest Number : %d , %d\n" ${ARRAY[0]} ${ARRAY[1]} 
'