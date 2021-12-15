echo " " >> ~/.bashrc
echo "# Run user RC file" >> ~/.bashrc
echo "if [ -f ~/.bashrc.user ]; then" >> ~/.bashrc
echo "    . ~/.bashrc.user" >> ~/.bashrc
echo "fi" >> ~/.bashrc
ln -s ~/.dotfiles/.bashrc.user ~/.bashrc.user
