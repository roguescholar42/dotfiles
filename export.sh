#!/bin/bash

#######################################################
# Script for exporting configs used by other scripts. #
#######################################################

# Exports Brewfile of currently installed apps.
echo "Checking installed applicatons..."
echo 
brew bundle dump --force
echo "Applications exported."

# Exports copy of dotfiles using Mackup.
echo 
echo "Checking dotfiles..."
echo 
mackup backup
echo "Dotfiles exported."