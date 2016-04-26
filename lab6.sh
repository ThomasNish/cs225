#!/bin/bash

MPVAR=$(ls /root/Projects/CS225/medialab | grep \.mp)
LAB=/root/Projects/CS225/medialab
XML=/root/Projects/CS225/medialab/media.xml

STRMEDIA=$( grep "filename" /root/Projects/CS225/medialab/media.xml | awk -F'>' '{ print $2 }' | awk -F'<' '{ print $1 }' | sort | uniq | grep -vwE "(NULL)" )
echo "Files not in medialab:"
for XMLFILES in $STRMEDIA ;do
        if [[ -e $LAB/"$XMLFILES" ]] ;then
                :
        else
                echo $XMLFILE
		(( XMLcounter++ ))
        fi
done
echo "Files not in media.xml:"
for MEDIAFILES in $MPVAR ;do
	if [[ -e /root/Projects/CS225/medialab/media.xml/"$MEDIAFILES" ]] ;then
		:
	else
		echo $MEDIAFILES
		(( MEDIAcounter++ ))
	fi
done
echo "$XMLcounter media files in media.xml that are NOT in medialab directory"
echo "$MEDIAcounter media files in medialab that are NOT in medialab directory"
