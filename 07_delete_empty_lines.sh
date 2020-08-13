<<comments
author:Nibin
date:03/11/2019
description:script to delete empty lines from a file
input:./07_delete_empty_lines.sh 07test
output:empty lines are deleted
comments
#!/bin/bash
if [ $# -eq 0 ]
then
    echo "error:please pass the file name through command line"
else
if [ $1 ]
then
    sed  '/^$/d' $1
    echo -e "Empty lines are deleted"
fi
fi
