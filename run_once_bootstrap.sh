#!/bin/bash

##########################################
# Script for bootstraping fresh install. #
##########################################

# Loads kernel into variable.
KERNEL=$(uname)

# Checks if MacOS or Linux and performs installs based on platform.
if [ $KERNEL == "Darwin" ]; then
    # Checks if brewfile exists. If so, installs apps.
    if [ -f "$HOME/.Brewfile" ]; then
        echo "Installing apps from Homebrew."
        brew bundle --global
    fi

elif [ $KERNEL == "Linux" ]; then 
    # Updates and installs apps using apt-get.
    echo "Updating apt and preinstalled packages."
    sudo apt-get update
    sudo apt-get upgrade -y

    echo "Installing apps."
    sudo apt-get install zsh -y
    sudo apt-get install neofetch -y

    # Checks if Antibody files doesn't exist. If not, it installs it.
    if [ ! -e "/usr/local/bin/antibody" ]; then
        echo "Installing Antibody."
        curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
    fi
    
fi

# Checks if Zsh is default shell.
if [ $SHELL == "/bin/zsh" ]; then
    # Reloads zsh if default. 
    echo "Reloading shell."
    exec zsh
else
    # Sets Zsh as the main shell. 
    echo "Setting Zsh as default."
    chsh -s /bin/zsh 
fi