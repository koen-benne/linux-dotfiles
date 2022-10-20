#! /bin/bash

wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf
feh --bg-scale /home/koen/Images/bg.jpeg
picom -b --experimental-backend --config /home/koen/.config/picom.conf --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350
dbus-launch --sh-syntax --exit-with-session dwm
spotifyd
