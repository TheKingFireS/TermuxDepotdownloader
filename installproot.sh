#!/data/data/com.termux/files/usr/bin/bash
# Download and install proot debian
pkg upgrade -y 
pkg install proot-distro -y
proot-distro install debian
ln -s /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/debian/root/ /data/data/com.termux/files/home/droot
