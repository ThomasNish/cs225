#!/bin/bash

shopt -s extglob

PATH=$1
if [[ -z $PATH ]] ;then
	echo "Try basename. Tends to work better"
	exit 1
elif [[ $PATH == / ]] ;then
	echo "/"
fi
PATH=${PATH%%+(/)}
FILE=${PATH##*/}

echo "$FILE "
