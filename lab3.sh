#!/bin/bash


if [[ $UID -eq 0 ]] ;then
	echo "It is insecure to run this script as root. You are the root user"
	exit 1
elif [[ $UID -le 500 ]] ;then 
	echo "You are not a valid user. ID must be greater than 500"
	exit 1
else
	if [ -f /etc/passwd ] && [ -r /etc/passwd ] ;then
 		STRHOME=cat /etc/passwd | grep "^$(whoami)" | awk -F ":" '{print $6}'
		HOMESIZE="$(du -sh)  $STRHOME" 
		echo "The size of your home directory is $HOMESIZE"
	else
		echo "You do not have a home directory in this system"
		exit 1 
	fi
fi
