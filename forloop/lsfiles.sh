#!/bin/bash
NARGS=$#
if [ $NARGS -ne 1 ]
then
    printf "ERROR! Mention Arguments\n"
    exit 100
fi

DIR=$1
if [ ! -d $DIR ]
then
    printf "ERROR! No Such Directory is present\n"
    exit 101
fi

for F in $DIR/*
do
  if [ -f $F ]
  then
      echo "$F"
  fi
done
