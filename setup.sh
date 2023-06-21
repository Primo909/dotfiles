#!/bin/bash

#git clone git@github.com:Primo909/dotfiles.git
#function check_prog() {
#    if ! hash "$1" > /dev/null 2>&1; then
#        echo "Command not found: $1. Aborting..."
#        exit 1
#    fi
#}
#check_prog stow

stow --target $HOME dotfiles/bash
stow --target $HOME dotfiles/vim

# stow all folders at once
#stow --target $HOME */

