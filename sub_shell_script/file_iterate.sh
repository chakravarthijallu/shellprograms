#!/bin/bash

names="/home/chakravarthi/shell_script/sub_shell_script/sample_file"

for name in $(cat $names)
do
	echo Characters of Hera Pheri is $name
done
