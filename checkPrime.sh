#!/bin/bash

read input

#check for prime starts
flag=0
i=2
cutInput=$( echo "sqrt($input)" | bc )

while [ $(echo "$i <= $cutInput" | bc ) -eq 1 ]
do
	#echo "$i"
	if [ $(echo "$input % $i" | bc ) -eq 0 ]
	then
		#echo "not a prime number"
		flag=1
	fi
	i=$((i+1))
done
#check for prime ends

#return section
if [ $flag -eq 1 ]
then
echo "0"
elif [ $flag -eq 0 ]
then
echo "1"
fi
