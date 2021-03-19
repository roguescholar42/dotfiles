#!/bin/bash

############################################################
# Script for setting up enviroment to backup and restore.  #
############################################################

# Determines location of the file and places it in the BASEDIR variable.
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# symlink mackup config to this repo.
ln -s ${BASEDIR}/.mackup.cfg ~/.mackup.cfg

# Runs the Import script to update files.
./import.sh