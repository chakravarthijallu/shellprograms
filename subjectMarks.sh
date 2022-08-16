#! /bin/bash
read -p "Enter First Subject Marks: " MARK1
read -p "Enter Second Subject Marks: " MARK2
read -p "Enter Third Subject Marks: " MARK3

if [ $MARK1 -lt 35 ];then
   echo "The Result : Fail"
elif [ $MARK2 -lt 35 ];then
   echo "The Result : Fail"
elif [ $MARK3 -lt 35 ];then
   echo "The Result : Fail"
else
   echo "The Result : Pass"
fi

: '
read -p "Enter First Subject Marks: " MARK1
read -p "Enter Second Subject Marks: " MARK2
read -p "Enter Third Subject Marks: " MARK3

if [ $MARK1 -ge 35 -a $MARK2 -ge 35 -a $MARK3 -ge 35 ];then
   echo "The Result : Pass"
else
   echo "The Result : Fail"
fi
'