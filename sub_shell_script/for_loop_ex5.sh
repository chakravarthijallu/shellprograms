#!/bin/bash

echo -n "Enter N:"
read n
for ((itr=1;itr<=n;itr+=2)){
	echo "$itr"
}
