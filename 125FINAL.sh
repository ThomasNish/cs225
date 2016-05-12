#!/bin/bash

# Objective 1
if [[ -f /root/Projects/CS225/messages.log ]] ;then
	:
else 
	cp -R /var/share/CS125/messages.log /root/Projects/CS225
	MESSAGE=$(grep "DROPPED" messages.log | grep "Dec" | wc -l)
	echo "There are $MESSAGE dropped packets in Dec" > /root/Projects/CS225/finalcli.txt
fi
# Objective 2
(echo n; echo p; echo 1; echo 2048; echo +100MB; echo ; echo w) | fdisk /dev/xvdb
(echo n; echo p; echo 2; echo ; echo +100MB; echo ; echo w) | fdisk /dev/xvdb

# Objective 3
echo "Enter your name: "
read NAME
if [[ $(grep -qv $NAME /etc/passwd) -eq 0 ]] ;then 
	:
else
	$(useradd $NAME)
fi
# Objective 4
#if [[ $(grep -qv Student /etc/passwd) -eq 0 ]] ;then
 #       :
#else
        $(useradd Student)
#fi
if [[ $(grep -qv netadmin /etc/group -eq 0) ]] ;then
        :
else
        $(groupadd netadmin)
fi
usermod netadmin Student 
$(yum groupinstall Xfce); echo y;
# Objective 5
$(mkdir /media/temp)
mkfs.ext4 /dev/xvdb1
$(mount /dev/xvdb1 /media/temp)
$(cp -Rf /home/* /media/temp)
$(umount /media/temp)
$(mount /dev/xvdb1 /home)
echo "/dev/xvdb1 /home /ext4 defaults 0 0" >> /etc/fstab
# Objective 6
if [[ -f /media/var ]] ;then
        :
else
        $(mkdir /media/var)
fi
if [[  -f /var/reports  ]] ;then
        :
else
        $(mkdir /var/reports)
fi
if [[ -f /var/reports/Marketing ]] ;then
        :
else
        $(mkdir /var/reports/Marketing)
fi

echo "/dev/xvdb2 /var/reports /ext4 defaults 0 0" >> /etc/fstab
mkfs.ext4 /dev/xvdb2
$(mount /dev/xvdb2 /media/var)
$(cp -Rf /var/reports /media/var)
$(umount /media/var)
$(mount /dev/xvdb2 /var/reports)

# Objective 7
$(chown Student. /home/Student)
$(read -s -p "Enter password: " mypassword)
echo $mypassword
#$(su - Student)
#$(cd /Desktop) 
