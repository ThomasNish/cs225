#!/bin/bash

cleanup()
{
	echo "leaning files"
        rm -Rf $TEMP
	exit 1
}
trap cleanup SIGINT
TEMPLIST=$(find /)
TEMP=$(mktemp)
for FILES in $TEMPLIST
do
	echo "File $i; $FILES"  >> $TEMP
	(( i++ ))
	
done #>> $TEMP

