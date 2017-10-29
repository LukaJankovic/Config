# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/luka/.zshrc'
zstyle ':completion:*' menu select=1
autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.startup
