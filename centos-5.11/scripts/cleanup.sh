#!/bin/sh

yum -y erase cpp wireless-tools system-config-securitylevel-tui
yum -y erase $(rpm -qa | grep kernel | grep -v `uname -r`)
yum -y clean all
rm -rf *.iso *.iso.?
rm -rf /tmp/*

sed -i 's/^HWADDR.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i 's/^UUID.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0

echo Zeroing out unused space...
dd if=/dev/zero of=/EMPTY bs=1M
rm -rf /EMPTY
