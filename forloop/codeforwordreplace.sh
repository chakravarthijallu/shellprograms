#!/bin/bash
for VALUE in /home/chakravarthi/HCLTech/practice/*
do
  mydir="$(basename $VALUE)"
  if [ -d $VALUE ]
  then
  # echo "$mydir"
  sed -i -e "s/US/$mydir/g" -e "s/of/${mydir}/g" $VALUE/pom.xml 
  fi
done
