mkdir -p ~/.config/xsession
ln -s ~/.dotfiles/xsession/.Xresources ~/.config/xsession/.Xresources
ln -s ~/.dotfiles/xsession/.xinitrc ~/.config/xsession/.xinitrc
sudo sed -i 's/^ERRFILE=.*$/ERRFILE=\/tmp\/.xsession-errors/g' /etc/X11/Xsession
sudo sed -i 's/^USRRESOURCES=.*$/USRRESOURCES=$HOME\/.config\/xsession\/.Xresources/g' /etc/X11/Xsession
echo "XINITRC=~/.config/xsession/.xinitrc" | sudo tee -a /etc/environment