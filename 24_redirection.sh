<<comments
author:NIBIN
date:31/10/2019
description:script to generate infinite loop
input:./24_redirection.sh
output:before execution
       hello hai
    
       after execution
       hello hai
       hello hai
       .
       .
       .
comments

#!/bin/bash
tail -f f2.sh|cat>>f2.sh|cat f2.sh|tail +1   #to genrate infinite loop , -f is follow file content ,using piping and redirection 
