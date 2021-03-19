#!/bin/bash

##########################################
# Script for bootstraping fresh install. #
##########################################

# Loads kernel into variable.
KERNEL=$(uname)

if [ $KERNEL == "Darwin" ]; then
    # Checks if brewfile exists. If so, installs apps.
    if [ -f "$HOME/.Brewfile" ]; then
        echo "Installing apps from Homebrew."
        brew bundle --global
    fi

elif [ $KERNEL == ""]; then 
fi

