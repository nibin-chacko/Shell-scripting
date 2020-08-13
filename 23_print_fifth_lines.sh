<<comments
author:NIBIN
date:23/10/2019
description:print the 5th line of a file passes through command line
input:./23_print_fifth_lines.sh file name
output:line number 5
       
comments
#!/bin/bash
if [ $# -eq 0 ] #checking the input file given or not
then
    echo "error:please pass the file name in command line"

else
l=$( cat $1 | wc -l )     #list the lines in file
   if [ 5 -gt $l ]        #check the number of lines greater than 5
then
    echo"error:$1 having only 2 lines.so cannot print 5th line"
else
    echo " the fifth line of $1 is $( cat $1 | head -5 | tail -1 )" #print the fifth line
fi
fi
