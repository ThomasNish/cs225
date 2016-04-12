#!/bin/bash

echo "Please enter a number"
read NUMBER

if (( NUMBER > 5 )) ;then
	echo "That number is bigger than 5"
else 
	echo "That number is less than 5"
fi
