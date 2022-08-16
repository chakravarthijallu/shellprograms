#!/bin/ksh
# Syntax : for val in {start..stop..step}

echo -n "Enter N:"
read n
for val in {1..$n..1}
do
	echo "$val"
done

