#!/bin/bash

#######################################################
# Script for exporting configs used by other scripts. #
#######################################################

# Exports Brewfile of currently installed apps.
brew bundle dump --force

# Exports copy of dotfiles using Mackup.
mackup backup