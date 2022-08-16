#!/bin/bash
SUM=0
function add(){
    NARGS=$#
    if [ $NARGS -ne 2 ]
    then
        return 10
    fi
    A=$1
    B=$2
    SUM=$[A+B]
    return 0
}
MUL=0
function multiple(){
    NARGS=$#
    if [ $NARGS -ne 2 ]
    then
       return 100
    fi
    X=$1
    Y=$2
    MUL=$[A*B]
    return 0
}
#main block
add $@
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo "sum: $SUM"
elif [ $STATUS -eq 10 ]
then
    echo "ERROR! Please enter 2 arguments"
    exit 1
fi

multiple $@
STATUS2=$?
if [ $STATUS2 -eq 0 ]
then
    echo "Multiplication : $MUL"
elif [ $STATUS2 -eq 10 ]
then
   echo "ERROR! enter 2 arguments"
   exit 2
fi