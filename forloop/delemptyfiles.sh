#!/bin/bash
NARGS=$#
if [ $NARGS -ne 1 ]
then
    printf "ERROR! mention argument\n"
    exit 100
fi

DIR=$1
if [ ! -d $DIR ]
then
    printf "ERROR! No such directories are present\n"
    exit 101
fi
DELETED_FILES=0
for F in $DIR/*
do
  if [ -f $F -a ! -s $F ]
  then
      rm $F
      DELETED_FILES=$[DELETED_FILES+1]
  fi
done
printf "%d : DELETED FILES\n" $DELETED_FILES