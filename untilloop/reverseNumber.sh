#!/bin/bash
read -p "n: " N
until [ $N == 0 ]
do
  echo $N
  N=$[N-1]
done