<<comments
author:NIBIN
date:31/10/2019
description:script for print of string
input:modified the .bashrc file
output:when we start a new terminal,according to time.
       good evening nibin,have a nice day!!!!!
       this is sun 25 in nov of 2019 (19:45:00 pm )
        
comments

#!/bin/bash
day=`date +%A|cut -d " " -f1`  #storing the day
month=`date|cut -d " " -f2`     #storing month
time=`date +%H|cut -d " " -f4`      #storing time
year=`date|cut -d " " -f7`      #storing year
hour=`date|cut -d " " -f5` #storing hour
date=`date|cut -d " " -f4` #storing the date
if [ $time -gt 5 -a $time -lt 12 ]   #check the morning
then
    echo "😍😍😍😍Good morning NIBIN😍😍😍😍 Have a nice day🕺🕺🕺🕺"
    echo "This is $day $date in $month of $year ($hour am)"
elif [ $time -ge 12 -a $time -le 13 ]  #check the noon
then 
    echo "😍😍😍😍Good noon NIBIN😍😍😍😍 Have a nice day🕺🕺🕺🕺"
    echo "This is $day $date in $month of $year ($hour pm)"
elif [ $time -ge 14 -a $time -le 17 ]   #check the afternoon
then 
    echo "😍😍😍😍Good afternoon NIBIN😍😍😍😍 Have a nice day🕺🕺🕺🕺"
    echo "This is $day $date in $month of $year ($hour  pm)"
elif [ $time -ge 18 -a $time -le 21 ]   #check the evening
then 
    echo "😍😍😍😍Good evening NIBIN😍😍😍😍 Have a nice day🕺🕺🕺🕺"
    echo "This is $day $date in $month of $year ($hour pm)"
elif [ $time -ge 22 -a $time -le 5 ]     #check the night
then
    echo "😍😍😍😍Good night NIBIN🕺🕺🕺🕺"    
    echo "This is $day $date in $month of $year ($hour am)"
fi
