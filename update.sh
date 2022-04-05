#!/bin/bash 

# Simple update and setup

# Catkin Setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make

# Git Setup
cp ./.gitconfig ~/.gitconfig

# Bashrc Setup
cp ./.bashrc ~/.bashrc

# .vscode Global Git Ignore
cp ./.gitignore ~/.gitignore

source ~/.bashrc
