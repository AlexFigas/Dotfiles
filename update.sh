#!/bin/bash 

# Simple update and setup

# Catkin Setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make

cd /mnt/38109A3A1099FF56/Alex/Git/Dotfiles

# remove snaps forever
cp ./nosnap.pref /etc/apt/preferences.d/
sudo apt update

# Git Setup
cp ./.gitconfig ~/.gitconfig

# Bashrc Setup
cp ./.bashrc ~/.bashrc

# .vscode Global Git Ignore
cp ./.gitignore ~/.gitignore

source ~/.bashrc
