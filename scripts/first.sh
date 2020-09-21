#!/bin/bash

######################################################################
# First run script for setting up a computer to work with dotfiles.  #
######################################################################

# Loads kernel into variable.
KERNEL=$(uname)

# Checks kernel and sets OS variable occordingly.
if [ $KERNEL == "Linux" ]; then
    OS=$(lsb_release -is)
elif [ $KERNEL == "Darwin" ]; then
    OS=masOS
fi

# Downloads dotfiles repo, and makes script folder exicutable.
echo "Downloading Dotfiles."
echo
git clone https://github.com/roguescholar42/dotfiles.git ~/.dotfiles
chmod +x ~/.dotfiles/scripts

# Perform OS spesific commands.
echo "Installing Required Apps."
echo
if [ $OS == "Raspbian" ]; then
    # Updates and installs apps using apt-get and pip.
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get install zsh zsh-antigen -y
    pip install --upgrade mackup

    # makes link to mackup configs.
    ln -s ~/.dotfiles/.pi_mackup.cfg ~/.mackup.cfg

    # Sets up Dotfiles. 
    echo "Updating Dotfiles."
    echo
    mackup restore

    # Sets Zsh as the main shell. 
    chsh -s /bin/zsh 
fi