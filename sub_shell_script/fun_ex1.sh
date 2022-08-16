#!/bin/bash
sumof2nos(){ # $1 <-- 10  $2 <-- 20
#echo "Sum of $1 and $2 is $(($1+$2))"
echo "Check : $0"
return $(($1+$2))
}

sumof2nos 10 20
echo "Sum of 10 and 20 is $?" 

# $? <-- It stores the latest return value


: '
sumof2nos(){
	echo -n "Enter 1st Number:"
read a
echo -n "Enter 2nd Number:"
read b
echo "Sum of $a and $b is $((a+b))"
}

sumof2nos
'

: '
sumof2nos(){ # $1 <-- 10  $2 <-- 20
echo "Sum of $1 and $2 is $(($1+$2))"
}

sumof2nos 10 20
'

: '
     $0 <-- file name 
     $1 <-- 1st argument
     $2 <-- 2nd argument
     $3 <-- 3rd argument

     $@ <-- all the arguments
     $# <-- no of arguments
     $? <-- It hold latest return value
'
