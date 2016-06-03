#!/bin/bash
. /root/Projects/CS225/functionlibrary.sh

trap trapforcrtc SIGINT

while getopts :i:s:hp:c: opt ;do
        case $opt in
                i) NUM=$OPTARG
		if check_ip "$NUM" ;then
                	echo ""$NUM" is a valid IP Address"
       		else
               		echo ""$NUM" is not a valid IP Address"
 	      	fi;;
                s) NUM=$OPTARG
                if check_ssn "$NUM" ;then
               		echo ""$NUM" is a valid social security number"
       		else
               		echo ""$NUM" is not a valid social security number"
       		fi ;;
      		
		h) echo "Valid help options"
		echo "-i Ip Address, "
       		echo "-s Social Security Number, "
       		echo "-p Phone Number, "
       		echo " or "
       		echo "-c Credit Card Number"
		;;
                p) NUM=$OPTARG
		if check_pn "$NUM" ;then
               		echo ""$NUM" is a valid Phone Number"
		else
               		echo ""$NUM" is not a valid phone number"
       		fi;;
                
		c) NUM=$OPTARG
		if check_ccn "$NUM" ;then
               		echo ""$NUM" is a valid Credit Card Number"
       		else
               		echo ""$NUM" is not a valid Credit Card Number"
       		fi;;
		\?) echo "That is not a valid option!" ;;
        esac
done
shift $(($OPTIND-1))

