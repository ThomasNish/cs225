#!/bin/bash

while getopts :dvhn:l: opt ;do
        case $opt in
                d) set -x ;;
                v) VERBOSE=true
		echo "VERBOSE is set true" ;;
                h) echo "Your options are -d, -v, -h, -n, and -l" ;;
                n) ARG=$OPTARG 
		echo "$ARG is the name entered" ;;
                l) DIR=$OPTARG
		echo "Would you like to view $DIR? (Yes or No)" ;;
		read ANS
		if (( ANS = [YyEeSs] ))
			cat $DIR
		\?) echo "That is not a valid option"
        esac
done
shift $(($OPTIND-1))

