<<comments
author:Nibin chacko
date:05/11/2019
description:script to rename current working directory with given name.
input:./rename_cur_dir.sh Assign2
output:
          the current working directory name  changed 
comments
 #!/bin/bash
  if [ $# -eq 0 ]
 then
      echo "pass the new directory name in command line"
 else
     a=(`find *.jpg`)     #finding the jpeg files
     for i in `seq 0 $(((${#a[@]})-1))`
     do
     var=`echo ${a[i]} | tr -cd [:digit:]`
     mv ${a[i]} $1_$var.jpg          #changing name
 done
 echo all .jpg files are renamed as:
 find *.jpg #printing renemed files
  fi

