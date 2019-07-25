#!/bin/sh

set -x

# libplist
sudo rm /usr/bin/plistutil
sudo rm /usr/lib/libplist*

# libusbmuxd
sudo rm /usr/bin/iproxy 
sudo rm /usr/lib/libusbmuxd.*

# libimobiledevice
sudo rm /usr/bin/idevice*
sudo rm /usr/lib/libimobiledevice.*

# libssl
sudo rm /usr/lib/libssl*

# libcrypto
sudo rm /usr/lib/libcrypto*

# copy all bin & lib
sudo chmod 755 fakeroot/usr/bin/*
sudo chmod 755 fakeroot/usr/lib/*
sudo cp -p fakeroot/usr/bin/* /usr/bin
sudo cp -p fakeroot/usr/lib/* /usr/lib

# test
plistutil
iproxy

