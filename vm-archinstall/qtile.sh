#!/bin/bash

sudo pacman -S --noconfirm reflector xorg xf86-video-fbdev lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings firefox arc-gtk-theme arc-icon-theme lxappearance nitrogen qtile picom thunar rofi alacritty xfce4-terminal networkmanager network-manager-applet numlockx
sudo reflector -c Spain -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo systemctl enable lightdm
sudo systemctl enable networkmanager

/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
