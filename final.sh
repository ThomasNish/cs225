#!/bin/bash

source finallib.sh

if [[ -z $1 ]] ;then
	callhelp
fi

while getopts :mc:h opt ;do
	startup()
	case $opt in
		m) MOVE=true ;;
		c) fillarray; createdir ;;
		h) callhelp ;;
		?/) echo "That is not a valid option!" ;;
	esac 
done
