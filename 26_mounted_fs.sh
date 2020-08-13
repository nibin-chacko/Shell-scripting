<<comments
author:Nibin chacko
date:03/11/2019
description:script to print filr sysytem with its information
input:./26_mounted_fs.sh /dev/sda3
output:file-system /dev/sda3 is mounted on / and its is having 7% used space with 159812072 kb free.
comments
#!/bin/bash
if [ $# -eq 0 ]
then
    echo "Error:please pass the name of the file-system through command line."
else
    arr=$1
    file=(`df |tr -s " " |cut -d " " -f1`) #storing the file
    free=(`df |tr -s " " |cut -d " " -f4`) #storing the free spaces
    used=(`df |tr -s " " |cut -d " " -f5`) #storing the used spaces
    mount=(`df |tr -s " "|cut -d " " -f6`) #storing the mounted 
    length=${#file[@]}
    for i in `seq 0 $(($length-1))`     #loop to check the input is exist in file
    do
	if [ ${arr[@]} = ${file[i]} ]   #check it is exist or not
	then
	    count=$((0+1))              #increment the count
	  echo "File-sysytem ${arr[@]} is mounted on ${mount[i]} and it is having ${used[i]} used space with ${free[i]} KB free"
fi

done
if [ $count -eq 0 ]         #if count is zero no mounted files
then
    echo " ${arr[@]} not mounted"
fi
fi


