<<comments
author:NIBIN
date:30/10/2019
description:script to search a user present in your system
input:.32_user_present.sh root
output:
       root is present
       
comments

#!/bin/bash

count=0
user=(`cat /etc/passwd|cut -d ":" -f1`)   #to store all users
if [ $# -eq 0 ]
then
    echo "pass the user name through command line argument"
else
    length=${#user[@]}
    for i in `seq 0 $(($length-1))`
    do
	if [ $1 = ${user[i]} ] #check the user is present or not
	then
	   count=$((count+1))
	   echo "$1 is present"
       fi
   done
   if [ $count -eq 0 ] #loop to print user is not present
   then
       echo "$1 is not present"
   fi
fi

