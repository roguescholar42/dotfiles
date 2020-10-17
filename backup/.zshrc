# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Enable Auto Completion
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit;
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Adds Auto completion menu.
zmodload -i zsh/complist

# Setup History configs
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

# Other Zsh configs
setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands

# Antibody plugin manager setup.
source <(antibody init) 

# Load Plugins.
antibody bundle ohmyzsh/ohmyzsh path:plugins/osx
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle chrissicool/zsh-256color
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle zpm-zsh/ls

# Add Spaceship Theme.
antibody bundle denysdovhan/spaceship-prompt

# Spaceship theme customizations.
SPACESHIP_CHAR_SYMBOL="\uf135 "
SPACESHIP_CHAR_SUFFIX=" "

# Import Alias file
source ~/.dotfiles/backup/.alias.zsh

# Add custom script folder.
export PATH="$PATH:$HOME/.scripts"

# Add dotfile scripts to path.
export PATH="$PATH:$HOME/.dotfiles/scripts"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"