<<comments
author:NIBIN
date:23/10/2019
description:sort a given number assending or descending order
input:-a 5 4 6 2 3 8 9 7 1
output:1 2 3 4 5 6 7 8 9
comments
#!/bin/bash

arr=($@)
if [ $# -eq 0 ]                      #check the numbers of commands
then
    echo "enter the valid inputs"
else
      case $1 in
           -a)
	      for i in `seq 1 $((${#arr[@]}-1))`
       	      do
		  for j in `seq 1 $((${#arr[@]}-1))`
	         do
		 if [ ${arr[$i]} -lt ${arr[$j]} ]   #check the less number
		 then
		    temp=${arr[$i]}              
		    arr[$i]=${arr[$j]}   #save the smallest number
		    arr[$j]=$temp
		fi
	    done
	done
	echo assending order of array is
	for j in `seq 1 $((${#arr[@]}-1))`
	do
	    echo ${arr[$j]}
	done
	;;
    -d)
	for i in `seq 1 $((${#arr[@]}-1))`
	do
	    for j in `seq 1 $((${#arr[@]}-1))`
	    do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
		    temp=${arr[$i]}
		    arr[$i]=${arr[$j]}
		    arr[$j]=$temp
		fi
	    done
	done
	echo desending order of array is
	for j in `seq 1 $((${#arr[@]}-1))`
	do
	    echo ${arr[$j]}
	done
	;;
esac
fi

    
