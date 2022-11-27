#!/bin/bash -x
arr=(1)

for ((arr=1;arr<=100;arr++))
do
   if ((arr%11==0))
   then
       echo $arr
       array["$arr"]=$arr
   fi
done
echo ${array[@]}
