#!/bin/bash
read -p "Enter Array: " -a NUMS
MAX=${NUMS[0]}
# echo "$MAX"
for ((I=1;I<${#NUMS[@]};I++))
do
  ARG=${NUMS[$I]}
  if [ $MAX -lt $ARG ]
  then
      MAX=$ARG
  fi
done

printf "Biggest Number : %d\n" $MAX