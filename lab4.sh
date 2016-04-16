#!/bin/bash

echo "Enter a number between 50 and 100: "
read NUMBER

NUMBER=$(echo $NUMBER | sed 's/[.].*$//')
NUMBER=$(echo $NUMBER | sed 's/[[:punct:][:alpha:]]//')

if [ $NUMBER -eq $NUMBER 2>/dev/null ] && [ $NUMBER -le 100 ] && [ $NUMBER -ge 50 ] ;then
	echo "You entered a valid number"
else 
	echo "Your number was invalid"
fi

