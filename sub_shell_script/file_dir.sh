#!/bin/bash
echo "Enter File / Dir:"
read input
if [ -f $input ] ; then
	echo "$input is a file"
elif [ -d $input ] ; then
	echo "$input is a dir"
else
	echo "no such file/dir exit"
fi

