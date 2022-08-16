#!/bin/bash
CHARACTERS=$1
#LEN=$(echo -n $CHARACTERS | wc -c)
#printf "LENGTH : $LEN\n"

LEN=`expr length $CHARACTERS` # expr is used find the length of the string
printf "LENGTH : $LEN\n"
