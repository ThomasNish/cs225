#!/bin/bash

echo "Please enter a number"
read NUMBER

NUMBER=$(echo $NUMBER | sed 's/^0*//')
NUMBER=$(echo $NUMBER | sed 's/[.].*$//')
NUMBER=$(echo $NUMBER | sed 's/[[:punct:][:alpha:]]//')

if [[ $NUMBER =~ ^[0-9]+$ ]] ;then

	REM=$(( $NUMBER % 2 ))
	#echo "That is not a number"
#elif (( $NUMBER -= ^0 )) ;then
	NUMBER=$(echo $NUMBER | sed 's/^0*//')
	if [ $REM -eq 0 ] ;then
		echo "$NUMBER is even"
	else
		echo "$NUMBER is odd"
	fi
else 
	echo "That is not a valid input"
fi

	
	
