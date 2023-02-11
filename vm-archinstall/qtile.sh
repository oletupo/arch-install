#!/bin/bash
sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm reflector xorg xf86-video-fbdev lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings firefox arc-gtk-theme arc-icon-theme lxappearance nitrogen qtile picom thunar rofi alacritty xfce4-terminal networkmanager network-manager-applet numlockx geany ttf-jetbrains-mono xdg-user-dirs udiskie
sudo reflector -c Spain -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo systemctl enable lightdm
sudo systemctl enable NetworkManager

cp -Rf .config ~/
xdg-user-dirs-update

/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot