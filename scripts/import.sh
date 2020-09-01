#!/bin/bash

#######################################################
# Script for importing apps and config files          #
#######################################################

# Upgrade already existing packages.
echo "Upgrading Packages."
echo
brew update
brew cask upgrade

# Install new packages from Brewfile.
echo "Installing New Packages."
echo 
brew bundle --file ~/.dotfiles/Brewfile

echo "Updating Dotfiles."
echo
mackup restore