#!/bin/bash 

# Simple update and setup
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' # Minimize on click

cd /mnt/C40E3ADB0E3AC668/Alex/Git/Dotfiles

# remove snaps forever
rm -rfv ~/snap/
sudo cp ./nosnap.pref /etc/apt/preferences.d/
sudo apt update

# Git Setup
cp ./.gitconfig ~/.gitconfig

# Bashrc Setup
cp ./.bashrc ~/.bashrc

# .vscode Global Git Ignore
cp ./.gitignore ~/.gitignore

source ~/.bashrc
