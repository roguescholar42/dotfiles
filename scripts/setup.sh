#!/bin/bash

############################################################
# Script for setting up enviroment to backup and restore.  #
############################################################

# Determines location of the file and places it in the BASEDIR variable.
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# symlink mackup config to this repo.
ln -s ${BASEDIR}/.mackup.cfg ~/.mackup.cfg

# Install oh my zsh.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"