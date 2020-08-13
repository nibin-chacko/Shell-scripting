<<comments
author:NIBIN
date:24/10/2019
description:arithematic operation on digits of a given number
input:1234+
output:sum is 10
comments
#!/bin/bash

a=$1

if [ $# -eq 0 ]
then 
    echo " error:please pass the argument"
elif [ $# -ne 0 ]
then
    optr=`echo $1 | cut -c ${#1}` #command to store operator ina variable
    num=`echo $1 | sed 's/.$//'` #command to store no in variable  
    if [ $optr="+" -o $optr="-" -o $optr="x" -o $optr="/" ] #condition for operation selection
    then
	case $optr in
	    "+")
		sum=0
		for i in $(seq 1 ${#num})
		do
		    digit=`echo $num | cut -c $i` #condition to cut of digit numbers
		    sum=$((sum + digit)) #to sum the digit of numbers
		done
		echo "sum is $sum"
		;;
             "-")
		 sub=0
		 for i in $(seq 1 ${#num})
		 do
		     digit=`echo $num | cut -c $i` #condition to cut off digit numbers
		     sub=$((sub-digit)) #to sub the digit of numbers
		 done
		 echo "substraction is $sub"
		 ;;
	     "x")
		 mul=1
		 for i in $(seq 1 ${#num})
		 do
		     digit=`echo $num | cut -c $i` #condition to cut off digit numbers
		     mul=$((mul*digit)) #to sub the digit of numbers
		 done
		 echo "multiplication is $mul"
		 ;;
	     "/")
		 dig1=`echo $num |cut -c 1`
		 div=$dig1
		 for i in $(seq 2 ${#num})
		 do
		     digit=`echo $num | cut -c $i` #condition to cut off digit numbers
		     div=`echo "scale=02; $div / $digit"|bc` #to divide digits of numbers
		 done
		 echo " division is $div"
		 ;;
	     *)                                 #invalid condition
		 echo "operator is missing"
		 ;;
	 esac
     fi
 fi

