#!/bin/bash

#######################################################
# Script for exporting configs used by other scripts. #
#######################################################

# Exports Brewfile of currently installed apps.
echo "Checking installed applicatons..."
echo 
brew bundle dump --force --global
chezmoi add ~/.Brewfile
echo "Applications exported."

# Commits changes to GitHub. 
echo
echo "Pushing Changes to GitHub."
echo
git -C ~/.local/share/chezmoi add .
git -C ~/.local/share/chezmoi commit -am "Dotfiles Updated."
git -C ~/.local/share/chezmoi push