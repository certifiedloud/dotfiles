#!/bin/bash


# Ensure git is available
command -v cowsay >/dev/null 2>&1 || { echo >&2 "Please install git before continuing"; exit 1; }

# Create the temp alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Clone dotfiles
git clone --bare git@github.com:certifiedloud/dotfiles.git $HOME/.dotfiles

# Checkout the content from the repo to $HOME
mkdir -p .config-backup && \
  dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .config-backup/{} && echo "Backed up conflicting files to .config-backup"
dotfiles checkout

# Hide untracked files in this local repo
dotiles config --local status.showUntrackedFiles no
