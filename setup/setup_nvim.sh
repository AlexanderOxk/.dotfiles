mkdir ~/.config/nvim
sudo apt install neovim curl
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/nvim/airline.vim ~/.config/nvim/airline.vim
ln -s ~/.dotfiles/nvim/gitgutter.vim ~/.config/nvim/gitgutter.vim
ln -s ~/.dotfiles/nvim/nerdtree.vim ~/.config/nvim/nerdtree.vim
