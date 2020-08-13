<<comments
author:NIBIN
date:24/10/2019
description:print the chess board
input:
output:chess board printed
comments

#!/bin/bash
i=1                     #initialise value
while [ $i -le 8 ]     #loop to print rows
do
    j=1                #initialise value
    while [ $j -le 8 ] #loop to print coloums
    do
	if [ $(($(($i+$j))%2)) -eq 0 ] #condition for blacks
	then 
	    echo -e -n "\e[40m" " " #to print black
	else
	    echo -e -n "\e[47m" " " #to print white
	fi
	j=$(($j+1))         #increment the value of j
    done
    echo -e -n "\e[0m" " "
    echo " "
    i=$(($i+1))            #increment the value of i
done


