<<comments
author:NIBIN
date:23/10/2019
description:find the fibonacci number
input:10
output:
       0 1 1 2 3 5 8
comments
#!/bin/bash
echo -n "Enter the limit for fib series:"
read num
first=0
second=1
if [ $num -lt 0 ]
then
    echo "please enter only positive numbers"
else
        while [ $first -le $num ]
        do
    echo  " $first"
      let third=$(($first+$second))
          first=$second
          second=$third
       done
fi

