#!/bin/bash 

# My simple install script
sudo apt update && sudo apt upgrade -y

# Initial Setup ################################################################################
# Flatpacks
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software gnome-software-plugin-flatpak -y

# Remove snaps
sudo snap remove firefox
sudo snap remove snap-store
sudo snap remove snapd-desktop-integration
sudo snap remove gtk-common-themes
sudo snap remove gnome-3-38-2004
sudo snap remove bare core20
snap remove snapd
sudo apt purge snapd

# Tweaks and Costumization
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extensions -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer -y

# Multimedia Codecs and VLC
sudo apt install ubuntu-restricted-extras -y && sudo apt install vlc -y

# Firewall
sudo systemctl enable ufw

# Preload
sudo apt install preload -y

# Laptop
sudo apt install tlp tlp-rdw -y
sudo systemctl enable tlp
sudo systemctl start tlp

# Limpeza do disco
sudo apt install bleachbit -y

# Basics ################################################################################

# Firefox
flatpak install flathub org.mozilla.firefox -y

# Curl
sudo apt install curl -y

# Git
sudo add-apt-repository ppa:git-core/ppa
sudo apt install git -y

# Latex and office
sudo apt install texlive-full -y
sudo apt install libreoffice-gnome libreoffice -y

# Miscellaneous ################################################################################
sudo apt install -y notepadqq # Notepad++
sudo apt install -y blender # Blender
sudo apt install -y gimp # Gimp
sudo apt install -y qbittorrent # Qbittorrent
sudo apt install -y thunderbird # Thunderbird
flatpak install flathub com.bitwarden.desktop -y # Bitwarden

# Putty
sudo apt install putty -y

# Discord
sudo apt update
sudo apt install -y gdebi-core 
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb 
rm discord.deb

# Programming ################################################################################

# Nodejs
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash - 
sudo apt -y install nodejs
sudo apt -y install gcc g++ make
sudo apt -y install npm

# Python3.10 and Libs
sudo apt install -y python3
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y python3.10
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10
sudo apt install -y python3-venv
python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
sudo apt install -y python-is-python3
sudo apt install python3-pip -y

# Java
sudo apt install -y openjdk-17-jdk
sudo apt install -y openjdk-8-jdk

# .NET SDK
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install dotnet-sdk-6.0 -y
# Mono (for .NET)
sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt install mono-complete -y

# VisualStudio Code
sudo apt update
sudo apt install -y curl apt-transport-https
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/ms-vscode-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ms-vscode-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install -y code
# For live share
echo "deb http://security.ubuntu.com/ubuntu impish-security main" | sudo tee /etc/apt/sources.list.d/impish-security.list
sudo apt update
sudo apt install libssl1.1

# University ################################################################################

# Wireshark
sudo apt install wireshark -y
sudo usermod -aG wireshark $(whoami)

# Unity
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt install unityhub -y

# PlatformIO
sudo apt -y install platformio
sudo apt install -y platformio-doc python-semantic-version-doc python3-wxgtk4.0
python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/master/scripts/get-platformio.py)"
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
sudo service udev restart
sudo usermod -a -G dialout $USER
sudo usermod -a -G plugdev $USER

# Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Final update, upgrade and clean junk ################################################################################
sudo apt update && sudo apt upgrade -y
sudo apt autopurge
sudo apt autoremove
sudo apt autoclean
sudo flatpak update -y
sudo flatpak uninstall --unused -y
