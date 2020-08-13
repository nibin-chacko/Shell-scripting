<<comments
author:NIBIN
date:22/10/2019
description:find the largest number
input:5 6 8 4 2 1
output:
        largest value is 8
comments

#!/bin/bash
argument=($@)
if [ $# -eq 0 ]    #to check the arguments are not enterd
then
    echo no arguments passed
else
    large=$1   #assume large is first value
    for i in $@
    do
	if [ $i -gt $large ]    #check the largest value

	then
	   large=$i    #take large value i
	fi

    done
    echo the largest value is $large
fi

