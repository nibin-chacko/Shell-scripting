<<comments
author:NIBIN
date:21/10/2019
description:print the given pattern
input:enter the number
output:
        1
	2 3
	4 5 6
	7 8 9 10
comments

#!/bin/bash
x=1                #initialise value
echo "enter the number"
read num
if [ $num -lt 0 ]  #check the error condition
then
    echo  "error"
else
    for i in `seq 1 $num`
    do
	for j in `seq 1 $i`
	do
	    echo -n " $x"
	    let x=$(($x+1)) #increment the value of x
	done 
	echo
    done

fi

