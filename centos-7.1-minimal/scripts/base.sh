sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl
hostnamectl set-hostname centos71-m-a
sed -i "s/TIMEOUT=5/TIMEOUT=0/" /etc/default/grub
sed -i -e 's:\#baseurl=:baseurl=:' -e 's:mirrorlist=:\#mirrorlist=:' /etc/yum.repos.d/CentOS-Base.repo
