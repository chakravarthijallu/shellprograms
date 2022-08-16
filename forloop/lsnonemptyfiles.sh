#!/bin/bash
NARGS=$#
if [ $NARGS -ne 1 ]
then
    printf "ERROR! Mention Argument\n"
    exit 100
fi

DIR=$1
if [ ! -d $DIR ]
then
    printf "ERROR! No Such Directories are present\n"
    exit 101
fi

for F in $DIR/*
do
  if [ -f $F -a -s $F ]
  then
      printf "$F\n"
  fi
done