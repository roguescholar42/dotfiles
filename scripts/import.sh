#!/bin/bash

#######################################################
# Script for importing apps and config files          #
#######################################################

# Loads kernel into variable.
KERNEL=$(uname)

# Pulls files from GitHub.
echo "Retrieving files from GitHub."
echo
git -C ~/.dotfiles pull 

# Checks if macOS, then performs specific actions.
if [ $KERNEL == "Darwin" ]; then
    # Upgrade already existing packages.
    echo "Upgrading Packages."
    echo
    brew update
    brew upgrade --cask

    # Install new packages from Brewfile.
    echo "Installing New Packages."
    echo 
    brew bundle --file ~/.dotfiles/Brewfile
fi

# Updates Dotfiles using Mackup.
echo "Updating Dotfiles."
echo
mackup restore

# Reloads Zsh.
exec zsh