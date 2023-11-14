#!/bin/bash
sudo debootstrap --arch amd64 bullseye /path/to/chroot http://deb.debian.org/debian/
sudo mount -t proc none /path/to/chroot/proc
sudo mount -t sysfs none /path/to/chroot/sys
sudo mount -o bind /dev /path/to/chroot/dev
sudo mount -o bind /run/udev /path/to/chroot/run/udev
#sudo cp /etc/resolv.conf /path/to/chroot/etc/resolv.conf
sudo unshare --mount --uts --ipc --net --pid --fork --user --map-root-user chroot /path/to/chroot /bin/bash




#exit
#sudo umount /path/to/chroot/proc
#sudo umount /path/to/chroot/sys
#sudo umount /path/to/chroot/dev
#sudo umount /path/to/chroot/run/udev

