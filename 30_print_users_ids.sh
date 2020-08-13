<<comments
author:NIBIN
date:30/10/2019
description:script to print user id and count user
input:./30_print_user_id.sh
output:user ID is 1000
       user ID is 1001

       total user are 2
comments

#!/bin/bash
count=0
array=(`cat /etc/passwd|cut -d ":" -f3`)
length=${#array[@]} #to count users

if [ $# -eq 0 ]
then
    for i in `seq 0 $(($length-1))`     #loop to print users
    do
	if [ ${array[i]} -gt 500 -a ${array[i]} -lt 1000 ] #condition to check range
	then
	    count=$((count+1))
	    echo "user id is ${array[i]}"   #print user id
	fi
    done
    echo
    echo "total users are $count"
else
    for i in `seq 0 $(($length-1))` #loop for user ids
    do
	if [ ${array[i]} -ge $1 -a ${array[i]} -le $2 ]
	then
	    count=$(($count+1))
	    echo "user id is ${array[i]}" #print user ids
	fi
    done
    echo "total users are $count"
fi





