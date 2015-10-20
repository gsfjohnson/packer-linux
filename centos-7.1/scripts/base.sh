sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl
hostnamectl set-hostname centos71
# sed -i -e 's:\#baseurl=:baseurl=:' -e 's:mirrorlist=:\#mirrorlist=:' /etc/yum.repos.d/CentOS-Base.repo
