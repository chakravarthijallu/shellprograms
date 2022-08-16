#! /bin/bash

: '
read -p "Enter number : " NUMBER
REM=$[NUMBER%2]

if [ $REM -eq 0 ]
then 
    echo $NUMBER is EVEN NUMBER
else 
    echo $NUMBER is ODD NUMBER
fi
'

: '
read -p "Enter first number : " NUM1
read -p "Enter second number : " NUM2
read -p "Enter third number : " NUM3

if [ $NUM1 -gt $NUM2 -a $NUM1 -gt $NUM3 ]
then 
    echo $NUM1 is largest number
elif [ $NUM2 -gt $NUM3 ]
then 
    echo $NUM2 is largest number
else
    echo $NUM3 is largest number
fi
'

: '
NUM1=$1
NUM2=$2
if [ $NUM1 -lt $NUM2 ] 
then
    echo "$NUM1 is less then $NUM2"
elif [ $NUM1 -gt $NUM2 ] 
then
    echo "$NUM1 is greater then $NUM2" 
else
    echo "$NUM1 is equal to $NUM2"
fi
'

: '
# A=$1
# B=$2
# SUM=$[A+B]
# SUB=$[A-B]
# DIV=$[A/B]
# MUL=$[A*B]
# echo sum : $SUM
# echo sub : $SUB
# echo mul : $MUL
# echo div : $DIV
# echo "No. of arguments : $#"
# echo "Arguments : $@"
# echo "Current Arguments : $*"
'