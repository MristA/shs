#! /usr/bin/bash
echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
echo zh_CN.UTF-8 UTF-8 >> /etc/locale.gen
echo zh_TW.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc --utc
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo sunbei > /etc/hostname
sed -i  '8i\127.0.1.1	myhostname.localdomain	myhostname' /etc/hosts
sed -i '1i\Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch' /etc/pacman.d/mfcitx-configtool
sed -i '1i\Server = http://mirrors.aliyun.com/archlinux/$repo/os/$arch' /etc/pacman.d/mfcitx-configtool
sed -i '1i\Server = http://mirrors.163.com/archlinux/$repo/os/i686' /etc/pacman.d/mfcitx-configtool
sed -i '1i\Server =http://211.81.240.26/archlinux/$repo/os/$arch' /etc/pacman.d/mfcitx-configtool
#sudo sh -c "yes|pacman -S dhcpcd"
#systemctl enable dhcpcd
echo [archlinuxfr] >>/etc/pacman.conf  
echo Server =http://repo.archlinux.fr/$arch >>/etc/pacman.conf  
sudo sh -c "yes|pacman -S axel
echo XferCommand = /usr/bin/axel -n 8 -a -o %o %u >>/etc/pacman.conf
sudo sh -c "yes|pacman -Syy"
sudo sh -c "yes|pacman -S wqy-zenhei ttf-fireflysung"
sudo sh -c "yes|pacman -S net-tools dnsutils inetutils iproute2"
sudo sh -c "yes|pacman -S xserver-xorg-video-intel"
sudo sh -c "yes|pacman -S xorg xorg-xinit"
sudo sh -c "yes|pacman -S plasma plamsa-desktop"
sudo sh -c "yes|pacman -S konsole"
sudo sh -c "yes|pacman -S dolphin"  
sudo sh -c "yes|pacman -S sddm"
sudo sh -c "yes|systemctl enable sddm
sudo sh -c "yes|pacman -S p7zip zip unzip rar unrar"  
sudo sh -c "yes|pacman -S firefox"
sudo sh -c "yes|pacman -S alsa-utils pulseaudio pulseaudio-alsa libcanberra-pulse libcanberra-gstreamer jack2-dbus"  
sudo sh -c "yes|pacman -S ntfs-3g"
sudo sh -c "yes|pacman -S sudo"
sudo sh -c "yes|pacman -S kde-l10n-zh_cn"  
sudo sh -c "yes|pacman -S fcitx"
sudo sh -c "yes|pacman -S fcitx-sogoupinyin"
echo export GTK_IM_MODULE=fcitx  >> /.xprofile
echo export QT_IM_MODULE=fcitx  >> /.xprofile
echo export XMODIFIERS=@im=fcitx  >> /.xprofile
sudo sh -c "yes|pacman -S fcitx-configtool"
