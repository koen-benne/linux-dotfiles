dbus-update-activation-environment DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
bash /usr/libexec/polkit-mate-authentication-agent-1 &
waybar -c $HOME/.config/waybar/config-hyprland &
dunst &
pipewire &
syncthing &
foot --server &
gnome-keyring-daemon --start --components=secrets &
/usr/libexec/polkit-mate-authentication-agent-1 &
