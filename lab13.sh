#!/bin/bash
. /root/Projects/CS225/functionlibrary.sh

trap trapforcrtc SIGINT

if [[  -z $1 ]] ;then
	echo "You entered nothing."
	echo "Try enter a: "
	echo "Ip Address, "
	echo "Social Security Number, "
	echo "Phone Number, "
	echo "or "
	echo "Credit Card Number"
else 
	INFO=$1
	if check_ip "$INFO" ;then
		echo ""$INFO" is a valid IP Address"
	else 
		echo ""$INFO" is not a valid IP Address"
	fi
	
	if check_ssn "$INFO" ;then
		echo ""$INFO" is a valid social security number"
	else
		echo ""$INFO" is not a valid social security number"
	fi
	
	if check_pn "$INFO" ;then
		echo ""$INFO" is a valid Phone Number"
	else 
		echo ""$INFO" is not a valid phone number"
	fi
	
	if check_ccn "$INFO";then
		echo ""$INFO" is a valid Credit Card Number"
	else 
		echo ""$INFO" is not a valid Credit Card Number"
	fi
fi


