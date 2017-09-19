# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/cody/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

HYPHEN_INSENSITIVE="true"
plugins=(git ssh-agent)

source $ZSH/oh-my-zsh.sh

# User configuration
# Setup screens
source ~/.screenlayout/work.sh

alias g='gvim --remote-silent'
alias comecomecome='git pull'

export EDITOR=vim

export PATH=~/.npm-global/bin:$PATH
