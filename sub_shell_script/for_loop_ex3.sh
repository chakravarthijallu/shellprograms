#!/bin/bash
# Syntax : for val in $(seq start step stop)

echo -n "Enter N:"
read n
for val in $(seq 1 1 $n)
do 
	echo "$val"
done
