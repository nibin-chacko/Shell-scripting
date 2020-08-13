<<comments
author:NIBIN
date:31/10/2019
description:script to print 10 password from /dev/urandom file
input:./20_random_password
output:
       scr*(@!5
       .
       . 
       .
comments

#!/bin/bash
for i in `seq 0 10` #loop for print 10 passwords
do
    for j in `seq 0 7` #loop for 8 charactor password
    do
	data=(`cat /dev/urandom|head -1|tr -cd [:graph:]|cut -c1-8`) #to cut all printable character
    done
    echo ${data[@]}  #print password
done
