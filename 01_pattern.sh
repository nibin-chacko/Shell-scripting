<<comments
author:NIBIN
date:21/10/2019
description:print the given pattern
input:enter the number
output:
        1
	1 2
	1 2 3
	1 2 3 4
comments

#!/bin/bash
echo "enter the number"
read num
if [ $num -lt 0 ]   #check the error condition
then
    echo  "error"
else
    for i in `seq 1 $num`
    do
	for j in `seq 1 $i`
	do
	    echo -n "$j "
	done
	echo
    done

fi

