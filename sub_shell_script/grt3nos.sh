#!/bin/bash
echo -n "Enter num1:"
read num1
echo -n "Enter num2:"
read num2
echo -n "Enter num3:"
read num3
#if test  $num1 -gt $num2 -a $num1 -gt $num3 
if ((num1 > num2 && num1 > num3))
then
	echo "$num1 is greater"
elif [ $num2 -gt $num3 ] ; then
	echo "$num2 is greater"
else
	echo "$num3 is greater"
fi	
