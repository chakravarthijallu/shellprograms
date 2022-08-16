#!/bin/bash
echo -n "Enter input:"
read input
if [ -r $input ] ; then
       echo "$input is a readable"
elif [ -w $input ] ; then
 echo "$input is a writable"
else 
       echo "No such file is existed"
fi       
