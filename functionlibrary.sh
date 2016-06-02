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
	echo "an't do that here. Exiting no" 
	exit
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


check_ip()
{
        CHECKADDRESS=$1
        if [[ $CHECKADDRESS =~ ^([2][5][0-5][.]|[2][0-4][0-9][.]|[1][0-9]{2}[.]|[1-9]?[0-9][.]){3}([2][5][0-5]|[2][0-4][0-9]|[1][0-9]{2}|[1-9]?[0-9])$ ]] ;then
                return 0
        else
                return 1
        fi
}


check_ssn()
{
        CHECKSSN=$1

        if [[ $CHECKSSN =~ ^[1-9][0-9]{2}[-\ ]?[0-9]{2}[-\ ]?[0-9]{4}$ ]] ;then
                return 0
        else
                return 1
        fi
}

check_pn()
{
        CHECKPN=$1
        if [[ $CHECKPN =~ ^[1]?[\ -(]?[1-9]{3}?[\ -)]?[1-9][0-9]{2}[\ -]?[0-9]{4}$ ]] ;then
                return 0
        else
                return 1
        fi
}

check_ccn()
{
        CHECKCCN=$1
if [[ $CHECKCCN =~ ^[0-9]{4}[\ -]?[0-9]{4}[\ -]?[0-9]{4}[\ -]?[0-9]{4}$ ]] ;then
        return 0
else
        return 1
fi
}

