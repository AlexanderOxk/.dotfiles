sudo apt install kitty
mkdir -p ~/.config/kitty
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
sudo update-alternatives --config x-terminal-emulator
