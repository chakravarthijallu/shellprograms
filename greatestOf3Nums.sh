#! /bin/bash
read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2
read -p "Enter Third Number: " num3

if [ $num1 -gt $num2 -a $num1 -gt $num3 ];then
   echo "The Biggest Number : $num1"
elif [ $num2 -gt $num3 ];then
   echo "The Biggest Number : $num2"
else 
   echo "The Biggest Number : $num3"
fi

: '
read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2
read -p "Enter Third Number: " num3

if [ $num1 -gt $num2 ];then
   if [ $num1 -gt $num3 ];then
      echo "The Biggest Number : $num1"
    else
      echo "The Biggest Number : $num3"
    fi
elif [ $num2 -gt $num3 ];then
    echo "The Biggest Number : $num2"
else 
    echo "The Biggest Number : $num3"
fi
'