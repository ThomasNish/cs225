#!/bin/bash

. /root/Projects/CS225/functionlibrary.sh

trapforcrtc

HOME=/root/Projects/CS225/
SCRIPTNAME=${0##*/}
TIMEFILE=/root/Projects/CS225/timefiles/*

while getopts :f:h opt ;do
        case $opt in
                f) FORCE='true' ;;
                h) echo "Your options are:
		-f: Force
		-h: Help" ;; 
                \?) echo "That is not a valid option!" 
		echo "Try $SCRIPTNAME -h for more help!" ;;
        esac
done
	shift $((OPTIND -1 ))

for LINE in $TIMEFILE; do
	if [ ! -d $LINE ];then
	getTime
	dir
		if [ -z $FORCE ];then
			copy
		else
			move
		fi
	fi
done

cleanup

