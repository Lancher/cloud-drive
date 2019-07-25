#!/bin/sh

set -x

# libplist
sudo rm /usr/bin/plistutil
sudo rm /usr/lib/libplist*

# libusbmuxd
sudo rm /usr/bin/iproxy 
sudo rm /usr/lib/libusbmuxd.*

# libimobiledevice & ideviceinstaller
sudo rm /usr/bin/idevice*
sudo rm /usr/lib/libimobiledevice.*

# libssl
sudo rm /usr/bin/openssl
sudo rm /usr/lib/libssl*

# usbmuxd
sudo rm /usr/sbin/usbmuxd

# libcrypto
sudo rm /usr/lib/libcrypto*

# copy all bin & sbin & lib
sudo chmod 755 fakeroot/usr/bin/*
sudo chmod 755 fakeroot/usr/sbin/*
sudo chmod 755 fakeroot/usr/lib/*
sudo cp -p fakeroot/usr/bin/* /usr/bin
sudo cp -p fakeroot/usr/sbin/* /usr/sbin
sudo cp -p fakeroot/usr/lib/* /usr/lib

# test
plistutil
iproxy

