#!/bin/bash
for VAL in $@
do
  printf "\t %2d" $VAL
done
echo