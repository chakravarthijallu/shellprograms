#!/bin/bash
echo -n "Enter num1:"
read num1
echo -n "Enter num2:"
read num2
sum=`expr "$num1+$num2" | bc`
echo "Sum of $num1 and $num2 is $sum"
