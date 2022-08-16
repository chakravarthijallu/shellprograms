#!/bin/bash

# function average
find_average(){
    sum=0
    i=1
    len=$#
    x=$((len+1))
    while [ $i -lt $x ]
    do
      arg=${!i}
      sum=$((sum+arg))
      i=$((i+1))
    done
    avg=$((sum/len))
    return $avg
}

# Main 
find_average 100 200 300 400
STATUS=$?
echo "Average : $STATUS"