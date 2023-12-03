#!/bin/bash
CHROOT=/path/to/chroot
sudo debootstrap --arch amd64 bullseye /path/to/chroot http://deb.debian.org/debian/
sudo mount -t proc none $CHROOT/proc
sudo mount -t sysfs none $CHROOT/sys
sudo mount -o bind /dev $CHROOT/dev
#sudo cp /etc/resolv.conf /path/to/chroot/etc/resolv.conf
sudo unshare --mount --uts --ipc --net --pid --fork --user --map-root-user chroot $CHROOT /bin/bash

#AARCH64
sudo unshare --mount --uts --ipc --net --pid --fork --user --map-root-user chroot $CHROOT /qemu-aarch64-static /usr/bin/bash



#exit
#sudo umount /path/to/chroot/proc
#sudo umount /path/to/chroot/sys
#sudo umount /path/to/chroot/dev
#sudo umount /path/to/chroot/run/udev

