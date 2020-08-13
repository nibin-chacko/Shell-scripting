<<comments
author:NIBIN
date:23/10/2019
description:print the length of each and every string using arrays
input:hello hai how are you ?
output:
       length of string (helo)-5
       length of string(hai)-3
       length of string(how)-3
       length of string(are)-3
       length of string(you)-3
       length of string(?)-1
comments

#!/bin/bash
array=($@)
if [ $# -ge 0 ]
then
    for i in `seq 0 $(($#-1))`
do
     echo "the length of string (${array[$i]}) - ${#array[$i]}"

done
fi
