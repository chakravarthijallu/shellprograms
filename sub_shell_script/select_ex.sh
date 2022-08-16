#!/bin/bash
names="Samuel Edison Sugan Jordan Quit"
echo "Select your name"
select name in $names
do
	if [ $name == "Quit" ] ; then
		echo "Thank you I am quit"
		break
	fi
	echo "Hello $name"
done
