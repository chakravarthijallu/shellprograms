#!/bin/bash
echo -n "Enter number1:"
read num1
echo -n "Enter number2:"
read num2
#sum=`expr $num1 + $num2`
#sum=$((num1+num2))
#((sum=num1+num2))
prod=`expr $num1 \* $num2`
echo "Product of $num1 and $num2 is $prod"
