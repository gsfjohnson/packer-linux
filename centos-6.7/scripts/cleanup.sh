yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y erase gcc gcc-c++ kernel-devel kernel-firmware cpp glibc-devel glibc-headers kernel-headers perl
yum -y erase $(rpm -q kernel | grep -v $(uname -r))
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

