#!/bin/bash

#######################################################
# Script for exporting configs used by other scripts. #
#######################################################

# Loads kernel into variable.
KERNEL=$(uname)

# Checks if macOS, then performs specific actions.
if [ $KERNEL == "Darwin" ]; then
    
    # Exports Brewfile of currently installed apps.
    echo "Checking installed applicatons..."
    echo 
    brew bundle dump --force --global
    chezmoi add ~/.Brewfile
    echo "Applications exported."
    echo
fi

# Commits changes to GitHub. 
echo "Pushing Changes to GitHub."
echo
git -C ~/.local/share/chezmoi add .
git -C ~/.local/share/chezmoi commit -am "Dotfiles Updated."
git -C ~/.local/share/chezmoi push