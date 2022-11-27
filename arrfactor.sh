#!/bin/bash -x

echo "enter a number"
read number

for(( i=2; i<=num; i++))
do
  if(($nuum%i==0))
  then
      count=0
      for(( j=1; j<=$i; j++))
      do
      if(($i%j==0))
      then
      ((count++))
      fi
done
if((count==2))
then
 echo $a
 num=$(($num/$i))
fi
   fi
done
echo ${num[@]}
