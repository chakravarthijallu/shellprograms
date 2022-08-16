#!/bin/bash
function addNumber(){
    A=$1
    B=$2
    SUM=$[A+B]
    echo "sum: $SUM"
}

#main block
F="T"
until [ $F == "F" -o $F == "f" ]
do
read -p "a: " A
read -p "b: " B
addNumber $A $B
read -p "Are You want to continue[T/F]: " F
done