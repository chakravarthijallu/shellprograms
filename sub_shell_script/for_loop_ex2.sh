#!/bin/bash
# Syntax : for val in `seq start step stop`

echo "Enter N:"
read n
for val in `seq 1 2 $n`
do 
	echo $val
done
