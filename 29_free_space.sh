<<comments
Author:Nibin chacko
Date:07/11/2019
description :script to display the names of any file sysytem  and free space
input:
output: the filesysytem /dev/loop0 have less than 10% free
comments

#!/bin/bash
file=`df -h |sed '1d' | tr -s ' ' | cut -d ' ' -f1` #to cut filesystem coloumn
used=`df -h | sed '1d' | tr -s ' ' | cut -d ' ' -f5 | tr % ' '`     #to cut the used space column
arr1=($file)
arr2=($used)
j=0
for i in ${arr2[@]}                                           #to acess the usedspace array one by onr
do 
    if [ $i -gt 90 ]                    #to check the condition
    then
	echo filesystem ${arr1[$j]} have less than 10% freespace     
    fi
    j=$(($j+1))
done
