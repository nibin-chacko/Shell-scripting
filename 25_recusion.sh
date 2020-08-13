<<comments
author:NIBIN
date:31/10/2019
description:print each afrgument passed to the function
input:./25_recusion.sh 1 2 3 4 5 6
output:
        1
	2
	3
        4
comments

#!/bin/bash
array=($@)
length=${#array[@]}
if [ $# -eq 0 ]
then
    echo "Enter the arguments"
else
    function print()      #function declaration
    {
       echo ${array[0]}
       data=(`echo ${array[@]}|cut -d " " -f1 --complement`)  #it will take one input and elemenate that one
       array=(`echo ${data[@]}`) #assign array
       length=$(($length-1))    #reduce the length
       if [ $length -eq 0 ]
       then
	   exit
       fi
       print  ${array[0]}  #call the function

   }
   print  $@ #call the function
fi
