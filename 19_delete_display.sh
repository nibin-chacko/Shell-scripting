<<comments
author:Nibin chackpo
date:31/10/2019
discriptio:script to find all hidden files
input:./19_delete_display.sh_test.sh
output:files are:
            


            ./file00.swp
comments
#!/bin/bash
if [ $# -eq 0 ]     #for arguments
then
     cd 
     data=(`find . -type f -iname "*.swp" `)  #to find out swp file,type f is a regular file
     lenght=${#data}   #checking lenght
  
     if [ $lenght -gt 0 ]    
	 then
	     echo "swp files are:"

     	     echo ${data[@]}     #print all file 
          else
	     echo "no swp files are here"
     fi
 else
    	 if [ -d $1 ]
    	 then

		 
     	 	cd $1         #change directory

        	data=`find . -type f -iname "*.swp" `    #to print all swp files
 	       	lenght=${#data}
  
	     	if [ $lenght -gt 0 ]   #to check wheather any swp file is present or not
		then
	     		echo "swp files are:"

     			echo ${data[@]}
		else
	
			echo "no swp files are here"
	    	fi
	else
		    echo "directory not exist"
	fi
 fi

