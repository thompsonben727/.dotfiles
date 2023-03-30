#!/bin/bash

#Puts the output of uname into variable LINUXCHECK
LINUXCHECK=$(uname)

echo $LINUXCHECK

#If the output of LINUXCHECK isn't linux
if [ $LINUXCHECK != "Linux" ]
then
	#Puts an error message into linuxsetup.log if the OS isn't Linux
	echo "Error, wrong OS" >> linuxsetup.log
	exit
else	
	#Makes the .TRASH directory if it doesn't already exist
	mkdir -p ~/.TRASH
	#Used to make .vimrc into a variable
	FILE=~/.vimrc
	#If it exists
	if [ -f "$FILE" ]
	then
		#Changes the name of the .vimrc to .bup_vimrc
		mv ~/.vimrc ~/.bup_vimrc
	fi
	#Puts the contents of the vimrc file into .vimrc in the home directory
	cat ~/.dotfiles/etc/vimrc > ~/.vimrc
	printf "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc 
fi


