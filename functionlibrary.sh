#!/bin/bash
# This is bash scripting function library

getTime()
{
	date=$(date +%D -r $LINE)
	year=${date%%/*}
	date=${date#*/}
	day=${date%%/*}
	date=${date#*/}
	month=$date
}

trapforcrtc()
{
	trap "echo you can\'t do that here" SIGINT
}
cleanup()
{
	rm -rf /tmp/tmp.*
	echo "Cleaning up temp files"
}

dir()
{
	if [ ! -d "$HOME/$year/$month/$day" ] ;then
	mkdir -p  "$HOME/$year/$month/$day"
	fi
}

copy()
{
	cp $LINE "$HOME/$year/$month/$day"
}

move()
{
	mv $LINE "$HOME/$year/$month/$day"
}



