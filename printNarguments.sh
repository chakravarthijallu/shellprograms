#!/bin/bash
if [ "$#" == "0" ]
then
   printf "Pass atleast one argument\n"
   exit 1
fi

while (( $# ))
do
  printf "you gave me $1\n"
  shift
done

