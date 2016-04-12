#!/bin/bash

echo "Enter your User ID: "
read UID

NUMBER=$(echo $NUMBER | sed 's/[.].*$//')
NUMBER=$(echo $NUMBER | sed 's/[[:punct:][:alpha:]]//')

if [[ $UID > 500 ]] ;then
	echo "That number is too big."
elif [[ $UID -eq 0 ]]
	exit 1
else 
	echo "This is a test" 
fi

