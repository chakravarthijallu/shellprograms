#!/bin/bash
var=10
fun(){
	local var=20
	echo "Local Variable :$var"
}
fun
echo "Global Variable :$var"

: '
var=10
fun(){
	var=20
	echo $var
}
fun
echo $var

#output:
# 20 
# 20
'
