<<comments
author:Nibin chacko
date:06/11/2019
description:script to rename a file/directory replaced lower/upper case letter
input:./14_lower_upper.sh
output:files are rename in lowercase and directories are renamed in upper case
comments

#!/bin/bash
for f in *     #loop to read ech file and directory name
do
    if [ -f $f ]  #condition to check whether it is file
    then
	mv $f `echo $f | tr [a-z] [A-Z]`  #command to rename to lowe case
    elif [ -d $f ]         #condition to check wether it is directory
    then
	mv $f `echo $f | tr [a-z] [A-Z]`      #command to rename upper case
    fi
done
echo "Files are rename in lowercase and directories are renamed in upper case"


