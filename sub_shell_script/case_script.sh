#!/bin/bash

echo Press any option
echo 1=shows the current date
echo 2=shows the list of files/directories
echo 3=shows the print working directory

read choice

case $choice in 
	1)date;;
	2)ls -lrt;;
	3)pwd;;
	*)echo Invalid option
esac
