<<comments
author:NIBIN
date:21/10/2019
description:add 2 real number
input:enter the 2 number
output:
        10+20=30
comments

#!/bin/bash

echo "enter the number1"
read num1
echo  "enter the number2"
read num2
sum=`echo $num1+$num2 |bc` #adding 2 numbers
echo sum of 2 numbers are $sum


