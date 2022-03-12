#!/bin/bash 

# Simple start bash

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	./install.sh;
	./update.sh;
fi