#!/bin/sh

set -x

ROOT=

# libplist
sudo rm ${ROOT}/usr/bin/plistutil
sudo rm ${ROOT}/usr/lib/libplist*

# libusbmuxd
sudo rm ${ROOT}/usr/bin/iproxy 
sudo rm ${ROOT}/usr/lib/libusbmuxd.*

# libimobiledevice & ideviceinstaller
sudo rm ${ROOT}/usr/bin/idevice*
sudo rm ${ROOT}/usr/lib/libimobiledevice.*

# usbmuxd
sudo rm ${ROOT}/usr/sbin/usbmuxd

# copy all bin & sbin & lib
sudo chmod 755 fakeroot/usr/bin/*
sudo chmod 755 fakeroot/usr/sbin/*
sudo chmod 755 fakeroot/usr/lib/*
sudo cp -p fakeroot/usr/bin/* ${ROOT}/usr/bin
sudo cp -p fakeroot/usr/sbin/* ${ROOT}/usr/sbin
sudo cp -p fakeroot/usr/lib/* ${ROOT}/usr/lib

# test
plistutil
iproxy

