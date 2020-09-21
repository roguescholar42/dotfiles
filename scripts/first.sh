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

echo $OS