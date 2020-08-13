<<comments
author:NIBIN
date:23/10/2019
description:print contents of file from given number to next given number of lines
input:5 3 filename
output:line number 5
       line number 6
       line number 7
comments
#!/bin/bash
fn=$3
srt=$1 #starting line
end=$2 #line upto print
l=$( cat $fn| wc -l )
if [ $((srt+end)) -gt $l ]  #condition checking the line is exist or not
then
    echo "the number of lines exceeded"
else
    echo "$( cat $fn | head -$(($srt+$end-1)) | tail -$end )" #print lines
fi

