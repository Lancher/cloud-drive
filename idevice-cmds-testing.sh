#!/bin/sh

set -ex

# idevice_id
idevice_id -l

# idevicebackup2
mkdir backup
idevicebackup2 backup ./backup
rm -rf ./backup

# idevicecrashreport
mkdir report
idevicecrashreport report ./report
rmn -rf report

# idevicedate
idevicedate

# idevicedebug
idevicedebug

# idevicedebugserverproxy
idevicedebugserverproxy

# idevicediagnostics
idevicediagnostics diagnostics All

# ideviceenterrecovery
ideviceenterrecovery

# ideviceimagemounter
ideviceimagemounter -h

# ideviceinfo
ideviceinfo

# idevicename
idevicename

# idevicenotificationproxy
idevicenotificationproxy -h

# idevicepair
idevicepair list

# ideviceprovision
ideviceprovision list

# idevicescreenshot
idevicescreenshot

# idevicesyslog
idevicesyslog -h
