#! /usr/bin/sh
# TODO add unshare udev for tty1
unshare -p -f chroot ./jail ./init;
