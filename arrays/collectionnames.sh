#!/bin/bash
DATA="T"
COUNTER=0
until [ $DATA == "q" -o $DATA == "Q" ]
do
  read -p "Enter name: " NAME
  NAMES[$COUNTER]=$NAME
  COUNTER=$[COUNTER+1]
  read -p "Are you want to continue [T/Q]: " DATA
done

printf "Elements of Array: %s\n" ${NAMES[@]}

printf "Total Elements : %d\n" ${#NAMES[@]}