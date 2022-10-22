sudo apt install ninja-build gettext libtool libtool-bin autoconf automake cmake make g++ pkg-config unzip curl doxygen
mkdir -p ~/temp/src
git clone https://github.com/neovim/neovim.git ~/temp/src/neovim
cd ~/temp/src/neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
sudo rm -rf ~/temp/src/neovim
