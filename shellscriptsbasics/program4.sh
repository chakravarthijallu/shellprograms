#!/bin/bash
DIRECTORY_NAME=$1
# DIRECTORY_BASE=$(pwd)
# ALL_FILES=$(ls $DIRECTORY_NAME)
# echo ALL_FILES: $ALL_FILES
COUNT=0
DIRECTORY_NAME2="/home/chakravarthi/shellscripts/*"
read -p "You want [FILES|DIR] : " OPTION
for FILE in $DIRECTORY_NAME2
do
        if [ $OPTION == "F" -o $OPTION == "f" ]
        then
            if [ -f $FILE ]
            then
                echo $FILE
                COUNT=$[COUNT+1]
            fi
        elif [ $OPTION == "D" -o $OPTION == "d" ]
        then
            if [ -d $FILE ]
            then
                echo $FILE
                COUNT=$[COUNT+1]
            fi
        fi
done
echo count: $COUNT 
# echo path: $DIRECTORY_BASE
