#!/bin/bash
DIRECTORY_NAME=$1
ALL_FILES=$(ls $DIRECTORY_NAME)
#echo $ALL_FILES
# printf "%s\t" $ALL_FILES
# printf "%s" $ALL_FILES
printf "%s\n" $ALL_FILES