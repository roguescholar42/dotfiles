#!/bin/bash

#######################################################
# Script for exporting configs used by other scripts. #
#######################################################

# Exports Brewfile of currently installed apps.
echo "Checking installed applicatons..."
echo 
brew bundle dump --force --file ~/.dotfiles/Brewfile
echo "Applications exported."

# Exports copy of dotfiles using Mackup.
echo 
echo "Checking dotfiles..."
echo 
mackup backup
echo "Dotfiles exported."

# Commits changes to GitHub. 
echo
echo "Pushing Changes to GitHub."
echo
# cd ~/.dotfiles
git -C ~/.dotfiles commit -am "Dotfiles Updated."
git -C ~/.dotfiles push
# cd - 