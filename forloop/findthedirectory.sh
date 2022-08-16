#!/bin/bash
function finddire(){
  DIRECTORY="/home/chakravarthi/HCLTech/practice/*"
  for VAL in $DIRECTORY
  do
    MYPATH=$(basename ${VAL})
    if [ -d $VAL -a $MYPATH == "user1" ]
    then
        sleep 10
        echo "FOUND!"
        finddire
    fi
  done
  return 0
}

#main block
finddire
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo "NO Such Directory Present !"
fi