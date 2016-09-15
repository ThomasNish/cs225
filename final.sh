#!/bin/bash

source finallib.sh

if [[ -z $1 ]] ;then
	callhelp
fi

while getopts :mcd:h opt ;do
	startup()
	case $opt in
		m) MOVE=true ;;
		c) fillarray && createdir ;;
		d) set -x ;;
		h) callhelp ;;
		?/) echo "That is not a valid option!"
		callhelp ;;
	esac 
done
