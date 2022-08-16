#! /bin/bash
A=$1
B=$2
C=$3
D=$4
E=$5
F=$6
SUM1=`expr $A + $B`
echo "sum1 : $SUM1"

SUM2=$((C+D))
echo "sum2 : $SUM2"

SUM3=$[E+F]
echo "sum3 : $SUM3"
