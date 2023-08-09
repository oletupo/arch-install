#!/bin/bash
sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm reflector git xorg xf86-video-fbdev lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings firefox arc-gtk-theme arc-icon-theme lxappearance nitrogen qtile picom rofi alacritty xfce4-terminal networkmanager network-manager-applet numlockx geany ttf-jetbrains-mono xdg-user-dirs udiskie polkit pacman-contrib thunar thunar-volman ranger xfce4-notifyd polkit-gnome p7zip pulseaudio pavucontrol mpv docker

# Nvidia Drivers
sudo pacman -S --noconfirm nvidia 
sudo reflector -c Spain -a 12 --sort rate --save /etc/pacman.d/mirrorlist

# Services
sudo systemctl enable lightdm
sudo systemctl enable NetworkManager
sudo systemctl enable reflector.service
sudo systemctl enable docker.service

# Config files
cp -Rf .config ~/
# cp .local/share (scripts?)

# Default directories
xdg-user-dirs-update

# Install paru
git clone https://aur.archlinux.org/paru.git
cd paru/
makepkg -si --noconfirm

# AUR
sudo paru -S --noconfirm ttf-noto-nerd joplin visual-studio-code-bin
# sudo paru -S --noconfirm visual-studio-code-bin
# Reboot 
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
