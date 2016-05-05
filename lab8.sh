#!/bin/bash


LINE=$(tail -1 /root/Projects/CS225/addresses.csv)

FNAME=${LINE%%,*}
LINE=${LINE#*,}
echo $FNAME
LNAME=${LINE%%,*}
LINE=${LINE#*,}
echo $LNAME
COMPANY=${LINE%%,*}
LINE=${LINE#*,}
echo $COMPANY
STREET=${LINE%%,*}
LINE=${LINE#*,}
echo $STREET
CITY=${LINE%%,*}
LINE=${LINE#*,}
echo $CITY
STATE=${LINE%%,*}
LINE=${LINE#*,}
echo $STATE
COUNTY=${LINE%%,*}
LINE=${LINE#*,}
echo $COUNTY
ZIP=${LINE%%,*}
LINE=${LINE#*,}
echo $ZIP
HPHONE=${LINE%%,*}
LINE=${LINE#*,}
echo $HPHONE
WPHONE=${LINE%%,*}
LINE=${LINE#*,}
echo $WPHONE
EMAIL=${LINE%%,*}
LINE=${LINE#*,} 
echo $EMAIL
WEBURL=${LINE%%,*}
echo $WEBURL
