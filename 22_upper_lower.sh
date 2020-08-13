<<comments
author:NIBIN
date:31/10/2019
description:upper to lower conversion of given sentence
input:./22_upper_lower.sh 22_test
       enter the coice
       1.for lower to upper
       2.for upper to lower
output:
        before execution
         i am nibin
       after execution
           I AM NIBIN
comments
#!/bin/bash
if [ $# -eq o ]
then
    echo "pass the file name through command line"
else
    if [ -f $1 ]
    then
	echo "enter the choice"
	echo "1.for lower to upper"
	echo "2.for upper to lower"
	read choice
	echo "before execution"
	echo
	echo `cat $1`
	case ${choice} in
	    1)
		echo
		echo "after execution"
		echo
		cat $1|tr [:lower:] [:upper:]   #convert lower to upper
		;;
	    2)
		echo
		echo "after execution"
		echo
		cat $1|tr [:upper:] [:lower:]  #convert upper to lower
		echo 
		;;
	esac
    else
	echo "file not exist"
    fi
fi


