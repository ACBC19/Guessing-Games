#!/usr/bin/env bash

compare()  {
	if [ $1 -gt  $2 ]
	then
		echo "High"
	elif [ $1 -lt $2 ]
	then
		echo "Low"
fi
	}

Nfiles=`ls -A | wc -l`
number='^[0-9]+$'
float='^[-]?[0-9]+\.?[0-9]*$'

while :
do
	echo "How many files are in this folder? (Only input integrer numbers, no spaces, no letters)"
	read resp
	if [[ $resp =~ $number ]]; then
		if [[ $resp -eq $Nfiles ]];then
			echo "There are $Nfiles files. Congrats!!!"
			break
		elif [ $resp -ne $Nfiles ];then
			compare $resp $Nfiles
		fi
	elif [[ $resp =~ $float ]];then
		echo 'The number is a float or a negative number, please introduce a positive integrer number'
	else
		echo "$resp is not a number" 
	fi
done 

