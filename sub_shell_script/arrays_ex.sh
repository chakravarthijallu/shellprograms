#!/bin/bash
sum=0
for ((ind=0;ind<5;ind++)){
	read arr[$ind]
	sum=$((sum + ${arr[$ind]}))
}

echo "sum of Array elements ${arr[@]} is $sum"
