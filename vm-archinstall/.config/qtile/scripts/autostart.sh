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

#IN BETA PHASE
#start sxhkd to replace Qtile native key-bindings
#run sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &

# Starting utility applications at boot time
run nm-applet &
#run pamac-tray &
#run xfce4-power-manager &
numlockx on &
#blueberry-tray &
picom --config $HOME/.config/picom/picom.conf &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &

# Starting user applications at boot time
nitrogen --restore &
udiskie -2 &
