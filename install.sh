#!/bin/bash 

# My simple install script
sudo apt update && sudo apt upgrade -y

# Gnome and Grub customizers
sudo apt install -y gnome-tweaks
sudo apt install -y grub-customizer

# Basics ################################################################################
sudo apt install -y curl
sudo apt install -y snapd
sudo apt install -y git
sudo apt install -y texlive-full
sudo apt install -y libreoffice-gnome libreoffice

# Programming ################################################################################
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y python3
sudo apt install -y openjdk-17-jdk
# .NET SDK
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0

# VS Code ################################################################################
sudo apt update
sudo apt install -y software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

# ROS Noetic ################################################################################
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install -y ros-noetic-desktop-full

# Unity v################################################################################################################################################################
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt-get install unityhub

# Miscellaneous ################################################################################
sudo apt install -y notepadqq 
sudo apt install -y blender
sudo apt install -y gimp
sudo apt install -y firefox
sudo apt install -y qbittorrent

# Joplin for School Notes ################################################################################
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Discord ################################################################################
sudo apt update
sudo apt install -y gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb 

# OBS ################################################################################
sudo apt install -y ffmpeg
sudo apt install -y v4l2loopback-dkms
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y obs-studio

# Spotify ################################################################################
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install -y  spotify-client

# External Install
# https://github.com/lawl/NoiseTorch/releases
# https://github.com/FS-Driverless/Formula-Student-Driverless-Simulator/releases
# https://zoom.us/download?os=linux

sudo apt update && sudo apt upgrade -y
