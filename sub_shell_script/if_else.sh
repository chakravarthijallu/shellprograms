#!/bin/bash

echo Hi User, Welcome to election
echo What is your age?
read age

if [ $age -ge 18 ]
then
	echo Your eligible to Vote
else
	echo Your not eligible to Vote
fi
