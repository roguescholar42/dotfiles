#!/bin/bash

#######################################################
# Script for importing apps and config files          #
#######################################################

# Loads kernel into variable.
KERNEL=$(uname)

# Updates Dotfiles using Chezmoi.
echo "Updating Dotfiles."
echo
chezmoi update

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
    brew bundle --global
fi

# Reloads Zsh.
exec zsh