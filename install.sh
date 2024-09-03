#!/bin/bash


xfce=(xfce4 xfce4-power-manager xfce4-weather-plugin xfce4-screenshooter thunar-volman thunar-archive-plugin)
system=(gcc make linux-headers-$(uname -r) build-essential)
pythons=(python3 python3-pip python3-venv)
firmwares=(firmware-realtek firmware-atheros firmware-iwlwifi firmware-linux-nonfree)
netman=(network-manager network-manager-gnome)
bt=(bluetooth blueman bluez)
audio=(pulseaudio pavucontrol pulseaudio-module-bluetooth)
utilities=(vlc gufw transmission gparted bleachbit menulibre filezilla nmap gdebi htop geoclue-2.0 curl plocate zip unzip rar unrar p7zip-full git ffmpeg wget gpg fwupd ristretto qt5ct adwaita-qt gammastep)

sudo apt install -y ${xfce[@]} &&
sudo apt install -y ${system[@]} &&
sudo apt install -y ${pythons[@]} &&
sudo apt install -y ${firmwares[@]} &&
sudo apt install -y ${netman[@]} &&
sudo apt install -y ${bt[@]} &&
sudo apt install -y ${audio[@]} &&
sudo apt install -y ${utilities[@]}
