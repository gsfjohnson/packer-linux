yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y erase gcc gcc-c++ kernel-develi cpp glibc-devel glibc-headers kernel-headers perl
yum -y erase centos-logos plymouth-core-libs alsa-firmware alsa-libs linux-firmware aic94xx-firmware libstdc++-devel ppp NetworkManager-libnm
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

