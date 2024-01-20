# wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf &
dbus-update-activation-environment DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
swaybg -i $HOME/Backgrounds/bg4.png &
bash /usr/libexec/polkit-mate-authentication-agent-1 &
waybar &
dunst &
pipewire &
syncthing &
# wireplumber &
# pipewire-pulse &
# pipewire-media-session &
foot --server &
gnome-keyring-daemon --start --components=secrets &
/usr/libexec/polkit-mate-authentication-agent-1 &
# /usr/libexec/xdg-desktop-portal -r & /usr/libexec/xdg-desktop-portal-wlr &
