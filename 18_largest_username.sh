<<comments
author:NIBIN
date:30/10/2019
description:display the longest and shortest username on the system
input:./18_largest_username.sh
output:
       longest name is :
       shortest name is:
       
comments

#!/bin/bash

count=0
user=(`cat /etc/passwd|cut -d ":" -f1`)   #to store all users
total=${#user[@]}
for j in `seq 0 $total`
do
    for i in `seq 0 $(($total-1))`
    do
	if [ ${#user[i]} -lt ${#user[i+1]} ] #checking largest and smallest user name
	then
	    temp=${user[i]}
	    user[i]=${user[i+1]}
	    user[i+1]=$temp
	fi
    done
done
echo "longest name is: ${user[0]}"
echo "shortest name is:${user[total-1]}"



