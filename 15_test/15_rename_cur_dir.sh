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
    path=`pwd`
   `mv -T "$path" "../$1"`   #treat DEST as a normal file and move back the parent directory and change the name
   echo "the directory name will be changed"
fi
