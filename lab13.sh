#!/bin/bash
. /root/Projects/CS225/functionlibrary.sh

trap trapforcrtc SIGINT

echo "Enter your information: "
read INFO

if (( -z INFO )) ;then
	echo "You entered nothing. Please enter something this time: "
	read INFO
check_ip()
{
	
}

check_ssn()
{
	
}

check_pn()
{
	if [[ !  $INFO =~ ([0-1]|[(])[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] ]] ;then
		exit 1
	else
		echo "That is a valid phone number"
		exit 0
	fi
}

check_ccn()
{
	
}
