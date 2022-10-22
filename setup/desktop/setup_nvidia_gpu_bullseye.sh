sudo apt install linux-headers-amd64

sudo sed -i 's/deb http:\/\/deb.debian.org\/debian\/ bullseye main/deb http:\/\/deb.debian.org\/debian\/ bullseye main contrib non-free/g' /etc/apt/sources.list

echo " " | sudo tee -a /etc/apt/sources.list
echo "# bullseye-backports" | sudo tee -a /etc/apt/sources.list
echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" | sudo tee -a /etc/apt/sources.list

sudo apt update
sudo apt install -t bullseye-backports nvidia-driver firmware-misc-nonfree nvidia-cuda-dev nvidia-cuda-toolkit
