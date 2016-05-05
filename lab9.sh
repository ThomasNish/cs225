#!/bin/bash

while getopts :dvhn:l: opt ;do
        case $opt in
                d) set -x ;;
                v) VERBOSE=true
		echo "VERBOSE is set true" ;;
                h) echo "Your options are:
		 -d Setting debugging
		 -v Setting Verbose to true
		 -h Help 
		 -n Entering a name 
		 -l DIR (Directory Required)" ;;
                n) ARG=$OPTARG 
		echo "$ARG is the name entered" ;;
                l) 	DIR=$OPTARG
			if [[ -z $DIR ]] ;then
				echo "You didn't enter a path"
			fi
			echo "Would you like to view $DIR? (Yes or No)" 
			read ANS 
			if echo $ANS | grep -iq "^y" ;then
				ls $DIR/*
			else 
				exit 1 
			fi ;;
		\?) echo "That is not a valid option!" ;;
        esac
done
shift $(($OPTIND-1))

