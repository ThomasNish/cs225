#!/bin/bash

. /root/Projects/CS225/functionlibrary.sh

# trapforcrtc

ADDR=$(cat /root/Projects/CS225/addresses.csv)

declare -a FNAME=$()
declare -a LNAME=$()
declare -a COMPANY=$()
declare -a STREET=$()
declare -a CITY=$()
declare -a STATE=$()
declare -a COUNTY=$()
declare -a ZIP=$()
declare -a HPHONE=$()
declare -a WPHONE=$()
declare -a EMAIL=$()
declare -a WEBURL=$()

for LINES in $ADDR
do
	



