#!/bin/bash
echo -n "Enter your choice:"
read choice
case $choice in 
	y*|Y*) echo "I am good" ;;
	n*|N*) echo "I am bad" ;;
	*) echo "Wrong option"
esac
