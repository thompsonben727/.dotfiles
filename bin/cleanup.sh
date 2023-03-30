#!/bin/bash

#removes the .vimrc in the home directory
rm -r ~/.vimrc
#replaces the given sring with nothing in the .bashrc
sed -i 's|source ~/.dotfiles/etc/bashrc_custom| |g' ~/.bashrc
#removes the .TRASH file in the home directory
rm -r ~/.TRASH
