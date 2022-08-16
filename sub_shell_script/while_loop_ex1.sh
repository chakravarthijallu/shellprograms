#!/bin/bash
echo -n "Enter N:"
read n
itr=1
while [ $itr -le 10 ]
do
	echo "$itr"
	#itr=`expr $itr + 1`
	itr=$((itr+1))
done
