#!/bin/bash

#######################################################
# Script for importing apps and config files          #
#######################################################

# Pulls files from GitHub.
echo "Retrieving files from GitHub."
echo
cd ~/.dotfiles
git pull
cd - 

# Upgrade already existing packages.
echo "Upgrading Packages."
echo
brew update
brew cask upgrade

# Install new packages from Brewfile.
echo "Installing New Packages."
echo 
brew bundle --file ~/.dotfiles/Brewfile

# Updates Dotfiles using Mackup.
echo "Updating Dotfiles."
echo
mackup restore

# Reloads Zsh.
exec zsh