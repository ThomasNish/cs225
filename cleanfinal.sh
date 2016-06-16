#!/bin/bash

$(yum groupremove Xfce); echo y;
#$(userdel Student)
#$(userdel Thomas)
$(umount /home)
$(umount /var/reports)
if grep -q Thomas /etc/passwd ;then
        :
else
        $(userdel $NAME)
fi
# Objective 4
if grep -q Student /etc/passwd ;then
       :
else
        $(userdel Student)
fi
if grep -q netadmin /etc/group ;then
        :
else
        $(groupdel netadmin)
fi

(echo d; echo 1; echo w; echo y) | gdisk /dev/xvdb
(echo d; echo 2; echo w; echo y) | gdisk /dev/xvdb
rm -Rf /home/Thomas
rm -Rf /home/Student
rm -Rf /media/temp
rm -Rf /media/var
rm -Rf /root/Projects/CS225/messages.log
rm -Rf /var/reports
rm -f /root/Projects/CS225/finalcli.txt
$(groupdel netadmin)
cp /etc/fstab /root/Projects/CS225/bkfstab
grep -v "/dev/xvdb1 /home /ext4 defaults 0 0" /root/Projects/CS225/bkfstab > /root/Projects/CS225/bkup
grep -v "/dev/xvdb2 /var/reports /ext4 defaults 0 0" /root/Projects/CS225/bkup > /root/Projects/CS225/bkfstab
cp /root/Projects/CS225/bkfstab /etc/fstab

$(lvremove /dev/vgfinal/lvfinal)
$(vgremove /dev/vgfinal)
$(pvremove /dev/xvdc1)
$(pvremove /dev/xvde1)
(echo d; echo 1; echo w; echo y) | gdisk /dev/xvdc
(echo d; echo 2; echo w; echo y) | gdisk /dev/xvde


(echo y) | rm  /etc/sysconfig/network-scripts/ifcfg-eth1
exit 0
