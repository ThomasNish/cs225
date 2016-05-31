#!/bin/bash

. /root/Projects/CS225/functionlibrary.sh

trapforcrtc

OLDIFS=$IFS
IFS=$'\n'

declare -a FNAME
declare -a LNAME
declare -a COMP
declare -a ADDRESS
declare -a CITY
declare -a COUNTY
declare -a STATE
declare -a ZIP
declare -a PHONE
declare -a FAX
declare -a EMAIL
declare -a WEB

ADDR=$(cat /root/Projects/CS225/addresses.csv)
i=0

for line in ${ADDR//\"/}; do
  FNAME[$i]="${line%%,*}"     
  Tlname="${line#*?,}"       
  LNAME[$i]="${Tlname%%,*}"   
  Tcomp="${Tlname#*?,}"
  COMP[$i]="${Tcomp%%,*}"   
  Taddress="${Tcomp#*?,}"
  ADDRESS[$i]="${Taddress%%,*}"     
  Tcity="${Taddress#*?,}"
  CITY[$i]="${Tcity%%,*}"     
  Tcounty="${Tcity#*?,}"
  COUNTY[$i]="${Tcounty%%,*}" 
  Tstate="${Tcounty#*?,}"
  STATE[$i]="${Tstate%%,*}"   
  Tzip="${Tstate#*?,}"
  ZIP[$i]="${Tzip%%,*}"       
  Tphone="${Tzip#*?,}"
  PHONE[$i]="${Tphone%%,*}"   
  Tfax="${Tphone#*?,}"
  FAX[$i]="${Tfax%%,*}"       
  Temail="${Tfax#*?,}"
  EMAIL[$i]="${Temail%%,*}"  
  Tweb="${Temail#*?,}"
  WEB[$i]="${Tweb%%,*}"       
  ((  i++  ))
done
IFS=$OLDIFS
