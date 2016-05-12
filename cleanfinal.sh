#!/bin/bash

$(yum groupremove Xfce); echo y;
$(userdel Student)
rm -Rf /home/Student
$(userdel $NAME)
rm -Rf /home/$NAME
$(umount /home)
$(umount /var/reports)
(echo d; echo 1; echo w; echo y) | gdisk /dev/xvdb
(echo d; echo 2; echo w; echo y) | gdisk /dev/xvdb
rm -Rf /media/temp
rm -Rf /media/var
rm -Rf /root/Projects/CS225/messages.log
rm -Rf /var/reports
rm -f /root/Projects/CS225/finalcli.txt
$(groupdel netadmin)
exit 0
