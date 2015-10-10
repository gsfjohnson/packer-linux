#!/bin/sh

yum -y erase bluez-gnome bluez-libs gpm irda-utils cups-libs cpp wireless-tools system-config-securitylevel-tui
yum -y erase $(rpm -qa | grep kernel | grep -v `uname -r`)
yum -y clean all
rm -rf *.iso *.iso.?
rm -rf /tmp/*

sed -i 's/^HWADDR.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i 's/^UUID.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0

dd if=/dev/zero of=/EMPTY bs=1M
rm -rf /EMPTY
