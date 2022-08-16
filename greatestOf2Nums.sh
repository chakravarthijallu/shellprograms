#! /bin/bash
read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2
if [ $num1 -eq $num2 ];then
    echo "Both numbers are same"
elif [ $num1 -gt $num2 ];then
    echo "First number is greater than Second number"
else 
    echo "First number is smaller than Second number"
fi


: '
read -p "Enter First Number: "  num1
read -p "Enter Second Number: " num2

if [ $num1 -gt $num2 ]
then
    echo "num1 : $num1 is bigger than num2 : $num2"
else 
    echo "num2 : $num2 is bigger than num1 : $num1"
fi
'