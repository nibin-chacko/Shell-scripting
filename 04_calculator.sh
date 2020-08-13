<<comments
author:NIBIN
date:21/10/2019
description:calculator
input:enter the 2 number
output:
        10+20=30
comments

#!/bin/bash
case $2 in
    +)                                #adding case
  echo    $(($1+$3))|bc
;;
    -)                                #substract case
echo	$(($1-$3))|bc
	;;
    x)                                #multiplying case
	echo $(($1*$3))|bc
	;;
    %)                                #modulo operation case
echo $(($1%$3))|bc
;;
/)                                    #divide operation
    echo $(($1/$3))|bc
    ;;
   *)

	echo "invalid"
	;;
esac


