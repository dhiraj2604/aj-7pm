#!/bin/bash
# Script to add a user to Linux system
if [ $(id -u) -eq 0 ]; then
	read -p "qwerty : " username
	read -s -p " : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p $pass $username
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system"
	exit 2
fi
Filesystem      Size  Used Avail Use% Mounted on
udev            3.9G     0  3.9G   0% /dev
tmpfs           786M  1.9M  784M   1% /run
/dev/sda1       916G   29G  841G   4% /
tmpfs           3.9G   49M  3.8G   2% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
tmpfs           3.9G     0  3.9G   0% /sys/fs/cgroup
/dev/loop1      163M  163M     0 100% /snap/gnome-3-28-1804/145
/dev/loop0      216M  216M     0 100% /snap/wine-platform-5-stable/13
/dev/loop2      4.3M  4.3M     0 100% /snap/bluez/229
/dev/loop3      2.3M  2.3M     0 100% /snap/gnome-system-monitor/148
/dev/loop4      304M  304M     0 100% /snap/wine-platform-5-stable/16
/dev/loop5      5.5M  5.5M     0 100% /snap/notepad-plus-plus/258
/dev/loop7      2.3M  2.3M     0 100% /snap/gnome-system-monitor/157
/dev/loop6      302M  302M     0 100% /snap/telegram-desktop/2619
/dev/loop8       99M   99M     0 100% /snap/core/11081
/dev/loop9       74M   74M     0 100% /snap/wine-platform-3-stable/10
/dev/loop12     384K  384K     0 100% /snap/gnome-characters/570
/dev/loop11     338M  338M     0 100% /snap/wine-platform-runtime/220
/dev/loop13     162M  162M     0 100% /snap/gnome-3-28-1804/128
/dev/loop14      65M   65M     0 100% /snap/gtk-common-themes/1514
/dev/loop16     2.5M  2.5M     0 100% /snap/gnome-calculator/826
/dev/loop10      62M   62M     0 100% /snap/core20/975
/dev/loop17     218M  218M     0 100% /snap/gnome-3-34-1804/60
/dev/loop23     640K  640K     0 100% /snap/gnome-logs/103
/dev/loop18     219M  219M     0 100% /snap/gnome-3-34-1804/66
/dev/loop27     4.3M  4.3M     0 100% /snap/bluez/266
/dev/loop28     384K  384K     0 100% /snap/gnome-characters/708
/dev/loop33      56M   56M     0 100% /snap/core18/1997
/dev/loop22     338M  338M     0 100% /snap/wine-platform-runtime/216
/dev/loop34      56M   56M     0 100% /snap/core18/2066
/dev/loop26     296M  296M     0 100% /snap/vlc/2103
/dev/loop20     261M  261M     0 100% /snap/kde-frameworks-5-core18/32
/dev/loop32     2.5M  2.5M     0 100% /snap/gnome-calculator/884
/dev/loop24     5.7M  5.7M     0 100% /snap/notepad-plus-plus/260
/dev/loop29     1.0M  1.0M     0 100% /snap/gnome-logs/100
/dev/loop25     296M  296M     0 100% /snap/vlc/2288
/dev/loop21     302M  302M     0 100% /snap/telegram-desktop/2637
/dev/loop30     100M  100M     0 100% /snap/wine-platform-3-stable/11
/dev/loop15     100M  100M     0 100% /snap/core/11167
/dev/loop19      62M   62M     0 100% /snap/core20/1026
/dev/loop31      66M   66M     0 100% /snap/gtk-common-themes/1515
tmpfs           786M   40K  786M   1% /run/user/1000
tmpfs           786M     0  786M   0% /run/user/130
