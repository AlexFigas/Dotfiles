#!/bin/bash 

# Simple start bash

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) -> " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	chmod +x ./install.sh;
	chmod +x ./update.sh;

	./install.sh;
	./update.sh;
	echo "Installed and Updated";
else
	echo "Canceled Install and Update";
fi

read -p "Want to reboot? (y/n) -> " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo reboot;
fi
