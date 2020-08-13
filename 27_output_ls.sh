<<comments
author:NIBIN
date:21/10/2019
description:script to print the content of directory without ls
input:./27_output_ls.sh ~ECEP pictures
output:/home/nbin
        all the content inside home directory
         /home/nibin/ECEP
        

       all the content of ECEP
	
comments

#!/bin/bash
array=($@)       #storing arguments
if [ $# -eq 0 ]  #minimum argument conditin
then
    echo
    path=`pwd`   #path storing
    echo $path
    echo *         #content print        
else
    if [ $# -gt 0 ]  #loop to acess array
    then
	for i in `seq 0 $(($#-1))`
	do
	    d=${array[i]}
	    echo  
	    cd $d     #change directory
	    path=`pwd`
	    echo $path         #path print
	    echo *	    #content print
	done
    fi
fi
