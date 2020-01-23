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

Nfiles=`ls -1 | wc -l`

while :
do
	echo "How many files are in this folder?"
	read resp
	if [[ $resp -eq $Nfiles ]];then
		echo "There are $Nfiles files. Congrats!!!"
		break
	elif [ $resp -ne $Nfiles ];then
		compare $resp $Nfiles
	fi
done 

