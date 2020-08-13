<<comments
author:NIBIN
date:2/11/2019
description:script to locks down permission
input:./28_lock_permission.sh test
output:
        -rw-rw-r-- nibin1
        drwxrwxr-x nibin2
      After execution
        
          -rw----------- nibin1
          drwx---------- nibin2
comments

#!/bin/bash
if [ $# -eq 0 ]    #check the input
then 
    echo " please pass the directory in command line"
else
   echo "before execution"
   cd $1                     #change directory
   ls -l                     #long listing
   cd ..                   
   chmod -R g-r-w-x,o-r-w $1  #change mode of that directory
   echo "After execution"
     cd $1
     ls -l            #after execution list
 fi
