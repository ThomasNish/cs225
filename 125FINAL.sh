#!/bin/bash

$(userdel Thomas Student)
$(umount /home)
$(umount /var/reports)
(echo d; echo 1; echo w; echo y) | gdisk /dev/xvdb
(echo d; echo 2; echo w; echo y) | gdisk /dev/xvdb
rm -Rf /media/temp
rm -Rf /media/var
rm -Rf /var/share/CS125/messages.log
$(groupdel netadmin)

# Objective 1
cp -R /var/share/CS125/messages.log /root/Projects/CS225
MESSAGE=$(grep "DROPPED" messages.log | grep "Dec" | wc -l)
echo "There are $MESSAGE dropped packets in Dec" > /root/Projects/CS225/finalcli.txt

# Objective 2
(echo n; echo p; echo 1; echo 2048; echo +100MB; echo ; echo w) | fdisk /dev/xvdb
(echo n; echo p; echo 2; echo ; echo +100MB; echo ; echo w) | fdisk /dev/xvdb

# Objective 3
useradd Thomas

# Objective 4
useradd Student
groupadd netadmin
usermod netadmin Student 
yum groupinstall Xfce; echo y; echo y;
# Objective 5
$(mkdir /media/temp)
mkfs.ext4 /dev/xvdb1
$(mount /dev/xvdb1 /media/temp)
$(cp -Rf /home/* /media/temp)
$(umount /media/temp)
$(mount /dev/xvdb1 /home)
echo "/dev/xvdb1 /home /ext4 defaults 0 0" >> /etc/fstab
# Objective 6
$(mkdir /media/var)
$(mkdir /var/reports)
$(mkdir /var/reports/Marketing)
echo "/dev/xvdb2 /var/reports /ext4 defaults 0 0" >> /etc/fstab
mkfs.ext4 /dev/xvdb2
$(mount /dev/xvdb2 /media/var)
$(cp -Rf /var/reports /media/var)
$(umount /media/var)
$(mount /dev/xvdb2 /var/reports)

# Objective 7
$(chown Student. /home/Student)
$(su - Student)
$(cd /Desktop) 
