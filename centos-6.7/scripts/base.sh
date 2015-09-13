sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl
sed -i s:localhost.localdomain:centos67-m-a: /etc/sysconfig/network
