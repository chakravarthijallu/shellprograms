#!/bin/bash

AGE=10
if [ $AGE -gt 18 ] && [ $AGE -lt 40 ]
then
    echo "Age is correct"
else 
    echo "Age is not correct"
fi

: '
AGE=20
if [ $AGE -gt 18 -a  $AGE -lt 40 ]
then
    echo "Age is correct"
else 
    echo "Age is not correct"
fi
'