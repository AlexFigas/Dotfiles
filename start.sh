#!/bin/bash 

# Simple start bash

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	chmod +x ./install.sh;
	chmod +x ./update.sh;

	./install.sh;

	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "INSTALL.SH DONE";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";

	./update.sh;

	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "UPDATE.SH DONE";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
	echo "";
fi