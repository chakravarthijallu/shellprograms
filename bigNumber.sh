#!/bin/bash
read -p "a: " A
read -p "b: " B
if [ $A -gt $B ]
then
    echo "a : $A is big"
fi

if [ $A -lt $B ]
then
    echo "b : $B is big"
fi

if [ $A -eq $B ]
then
    echo "a : $A and a : $B are same"
fi