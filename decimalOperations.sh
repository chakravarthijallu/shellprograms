#!/bin/bash
read -p "Enter 1st Number: " number1
read -p "Enter 2nd Number: " number2

printf "1. Addition \n2. Substraction \n3. Multiplication \n4. Division"
read -p "Choice option 1|2|3|4: " ch

case $ch in
    1) SUM=$(echo "$number1+$number2" | bc)
       echo "sum : $SUM"
       ;;
    2) SUB=$(echo "$number1-$number2" | bc)
       echo "sub : $SUB"
       ;;
    3) MUL=$(echo "$number1*$number2" | bc)
       echo "mul : $MUL"
       ;;
    4) DIV=$(echo "$number1/$number2" | bc)
       echo "div : $DIV"
       ;;
    *) echo "You entered wrong number please try again."
       ;;
esac
