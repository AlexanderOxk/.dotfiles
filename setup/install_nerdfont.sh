sudo apt install curl unzip fzf fontconfig
mkdir -p ~/temp
git clone https://github.com/ronniedroid/getnf.git ~/temp/getnf
cd ~/temp/getnf
./install.sh
./getnf
rm -rf ~/temp/getnf
