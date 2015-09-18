yum -y erase gtk2 libX11 hicolor-icon-theme avahi bitstream-vera-fonts
yum -y erase gcc gcc-c++ kernel-develi cpp glibc-devel glibc-headers kernel-headers perl
yum -y erase centos-logos plymouth-core-libs linux-firmware libstdc++-devel ppp NetworkManager-libnm firewalld
yum -y erase $(rpm -q kernel | grep -v $(uname -r))
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

