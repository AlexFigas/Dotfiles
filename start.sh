#!/bin/bash 

# Simple start bash

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	chmod +x ./install.sh;
	chmod +x ./update.sh;

	./install.sh;
	./update.sh;
fi