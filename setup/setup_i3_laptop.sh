sudo apt install i3 xbacklight pulseaudio
mkdir ~/.config/i3
ln -s ~/.dotfiles/i3/config.xps13 ~/.config/i3/config
cat << EOF | sudo tee /etc/X11/xorg.conf
Section "Device"
    Identifier  "0x42"
    Driver      "intel"
    Option      "Backlight"  "intel_backlight"
EndSection
EOF
