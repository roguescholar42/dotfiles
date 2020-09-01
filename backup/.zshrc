# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add Antigen to Zsh session.
source /usr/local/share/antigen/antigen.zsh

# Set Antigen to use Oh-My-Zsh plugins.
antigen use oh-my-zsh

# Load Plugins.
antigen bundle osx
antigen bundle history

# Add Spaceship Theme.
antigen theme denysdovhan/spaceship-prompt

# Apply changes to Antigen configuration.
antigen apply

# Import Alias file
source ~/.dotfiles/backup/.alias.zsh

# Add custom script folder.
export PATH="$PATH:$HOME/.scripts"

# Add dotfile scripts to path.
export PATH="$PATH:$HOME/.dotfiles/scripts"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
