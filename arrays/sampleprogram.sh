#!/bin/bash
read -p "n: " N

for ((I=1;I<=N;I++))
do
  read -p "Enter $I Number: " ELE
  ARR[$I]=$ELE
done
echo
for ((I=1;I<=N;I++))
do
  printf "Array %d Number: %d\n" $I ${ARR[$I]}
done

# printf "Elements of Array : %d\n" ${ARR[@]} # above one and this one is same 
printf "Total Number of Elements in Array: %d\n" ${#ARR[@]}
