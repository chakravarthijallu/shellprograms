#!/bin/bash
NUMBER_TYPE=" "
function evenorodd(){
    local NARGS=$#
    if [ $NARGS -ne 1 ]; then
       return 18
    fi
    local A=$1
    local REM=$[A%2]
    if [ $REM -eq 0 ]; then
        NUMBER_TYPE="even"
    else 
        NUMBER_TYPE="odd"
    fi
    return 0
}

#main block
read -p "Enter Number to check [EVEN|ODD]: " NUM
evenorodd $NUM
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo "$NUMBER_TYPE"
    exit 10
else
    echo "ERROR! Argument is missing"
fi
