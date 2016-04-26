#!/bin/bash

rm -f /root/Projects/CS225/lostfiles.txt
rm -f /root/Projects/CS225/foundfiles.txt
MEDIALIST=$(cat /root/Projects/CS225/medialab/medialist.txt)
for files in $MEDIALIST ;do	
	if [[ -e /root/Projects/CS225/medialab/"$files" ]] ;then
		echo "$files was found" >> /root/Projects/CS225/foundfiles.txt
	else
		echo "$files wasn't found" >> /root/Projects/CS225/lostfiles.txt
	fi	
done
