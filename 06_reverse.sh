<<comments
author:NIBIN
date:22/10/2019
description:find the reverse number
input:121
output:
        121
comments

#!/bin/bash
num=$1
temp=$num                     #give array name is temp
rev=0                         #assume reverse value is 0
if [ $# -eq 0 ]               #check invalid number
then
    echo "invalid number"
elif [ $(($temp/10)) -eq 0 ]  #check the number is single
  then
    echo "enter a multi digit number"
else
   while [ $num -ne 0 ]
      do
    let reminder=$num%10        #take the reminder of enterd number
    let rev=$rev*10+$reminder
     let num=$num/10
    
   done
         echo $rev
fi

