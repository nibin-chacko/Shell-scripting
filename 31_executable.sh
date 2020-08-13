<<comments
author:nibin chacko
date:03/11/2019
description:script to count all executable files in current directory
input:./31_executable_path.sh
output:

       current directory :  /usr/local/sbin
number of executable files are 0

current directory :  /usr/local/bin
number of executable files are 0

current directory :  /usr/sbin
number of executable files are 184

current directory :  /usr/bin
number of executable files are 1579

current directory :  /sbin
number of executable files are 170

current directory :  /bin
number of executable files are 163

current directory :  /usr/games
number of executable files are 5

current directory :  /usr/local/games
number of executable files are 0

current directory :  /snap/bin
number of executable files are 4

total executable files are 2105
comments

#!/bin/bash

sum=0
for i in `seq 1 9` #loop to store all path variable in array
do
    arr=`echo $PATH|cut -d ":" -f$i` #-s sueezing and cuting the path variables
count=0      #to count total number of executable files
echo "current directory : $arr"
cd $arr #change directory
files=(`ls -l |tr -s " "|cut -d " " -f9`)  #access all files in current directory
length=${#files[@]}
for i in `seq 0 $((length-1))`  #loop to count all executable files
do
    if [ -x ${files[i]} ]
    then
	count=$((count+1))
    fi
done
echo "numbetr of executable files are $count"
sum=$((sum+count))  #all files
done
echo "total executable files are $sum"

