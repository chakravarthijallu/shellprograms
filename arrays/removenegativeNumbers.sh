#!/bin/bash
read -p "Enter array: " -a ARRAY
declare -a ARRAY2
INDEX=0
for VAL in ${ARRAY[@]}
do
  if [ $VAL -gt 0 ]
  then
      ARRAY2[$INDEX]=$VAL
      INDEX=$[INDEX+1]
  fi
done

printf "Array Element: %d\n" ${ARRAY2[@]}
printf "Length of the new Array : %d\n" ${#ARRAY2[@]}