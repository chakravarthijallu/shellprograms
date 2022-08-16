#!/bin/bash
echo -n "Enter N:"
read n
itr=2
until [ $itr -gt $n ]
do 
	echo "$itr"
	#itr=$((itr+2))
	((itr+=2))
done
