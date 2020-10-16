# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Antibody plugin manager setup.
source <(antibody init) 

# Load Plugins.
# antibody bundle ohmyzsh/ohmyzsh path:plugins/osx

# Add Spaceship Theme.
antibody bundle denysdovhan/spaceship-prompt

# Import Alias file
source ~/.dotfiles/backup/.alias.zsh

# Add custom script folder.
export PATH="$PATH:$HOME/.scripts"

# Add dotfile scripts to path.
export PATH="$PATH:$HOME/.dotfiles/scripts"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
