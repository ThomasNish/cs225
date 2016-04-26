#!/bin/bash

MPVAR=$(ls -1 /root/Projects/CS225/medialab)
LAB=/root/Projects/CS225/medialab
XML=/root/Projects/CS225/medialab/media.xml
XMLcounter=0
MEDIAcounter=0
STRMEDIA=$( grep "filename" /root/Projects/CS225/medialab/media.xml | grep "mp[g3]" | awk -F'>' '{ print $2 }' | awk -F'<' '{ print $1 }'  | sort | uniq | grep -vwE "(NULL)" )
echo "Files not in medialab:"
for XMLFILE in $STRMEDIA ;do
        if [[ -e $LAB/"$XMLFILE" ]] ;then
                :
        else
                echo $XMLFILE
		(( XMLcounter++ ))
        fi
done
echo "Files not in media.xml:"
for MEDIAFILES in $MPVAR ;do
	if grep -q $MEDIAFILES $XML  ;then
		:
	else
		echo $MEDIAFILES
		(( MEDIAcounter++ ))
	fi
done  
echo "$XMLcounter media files in media.xml that are NOT in medialab directory"
echo "$MEDIAcounter media files in medialab that are NOT in media.xml"
