<<comments
author:NIBIN
date:30/10/2019
description:script for print system informations
input:enter a choice 2
output:your shell directory is /bin/bash
comments

#!/bin/bash
echo "1.current logged users"
echo "2.your shell directory"
echo "3.home directory"
echo "4.os name and version"
echo "5.current working directory"
echo "6.number of users logged in"
echo "7.show all available shells in your system"
echo "8.hard disk information"
echo "9.cpu information "
echo "10.memory information"
echo "11.file sysytem information"
echo "12.currently running process"


echo 


echo "enter the choice"
read choice
case ${choice} in
    1)
	echo "currently logged user is `whoami`" #to know the user logged in
	;;
    2)
	echo "your shell directory is `echo $shell`"
	;;
    3)
	echo "home directory is `echo $home`" #for home directory information
	;;
    4)
	echo "os name and version respectively `uname-o` and `uname-v`"
	;;
    5)
	echo "current working directory `echo $pwd`"   #present working directory
	;;
    6)
	echo "number of users logged in `who -q`"      #number of users logged in
	;;
    7)
	echo "all available shells in your system is `cat /etc/shell`"    #print available shells
	;;
    8)
	echo "hard disk information is `free -h`"          #print disk information
	;;
    9)
	echo "cpu information is `/proc/cpuinfo`"     #print cpu information
	;;
    10)
	echo "memory information is `/proc/meminfo`"  #print memory information
	;;
    11)
	echo "file sysytem information is `df`"
	;;
    12)
	echo "currently running process is `ps`"
	;;
esac




