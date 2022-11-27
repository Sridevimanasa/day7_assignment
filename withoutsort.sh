#!/bin/bash -x

s1=9999
s2=9999
l1=1
l2=1
for((i=1;i<=10;i++))
do
randomcheck=$((RANDOM%900+100))
randomthreedigi[$i]=$((randomcheck))
echo ${randomthreedigi[@]}
if(($s1>$randomcheck))
then
   s2=$s1
   s1=$randomcheck
elif(($s2>$randomcheck && $s1!=$randomcheck))
then
    s2=$randomcheck
    echo "second smallest:$s2"
fi
if(($l1<$randomcheck))
then
    l2=$l1
    l1=$randomcheck
elif(($l2<$randomcheck && $l1!=$randomcheck))
then
    l2=$randomcheck
fi
done
echo "second largest:$l2"

