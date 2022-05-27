#!/bin/bash 

# Simple update and setup
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' # Minimize on click

cd /mnt/38109A3A1099FF56/Alex/Git/Dotfiles

# remove snaps forever
sudo cp ./nosnap.pref /etc/apt/preferences.d/
sudo apt update

# Git Setup
cp ./.gitconfig ~/.gitconfig

# Bashrc Setup
cp ./.bashrc ~/.bashrc

# .vscode Global Git Ignore
cp ./.gitignore ~/.gitignore

source ~/.bashrc
