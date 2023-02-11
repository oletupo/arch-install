#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Resolution
xrandr --output Virtual-1 --mode 1920x1080

# Keyboard
setxkbmap -layout es

# Starting utility applications at boot time
run nm-applet &
#run pamac-tray &
#run xfce4-power-manager &
numlockx on &
#blueberry-tray &
picom --config $HOME/.config/picom/picom.conf &
/usr/lib/xfce-polkit/xfce-polkit &
udiskie -2 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &

# Starting user applications at boot time
nitrogen --restore &

