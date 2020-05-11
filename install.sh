#!/bin/bash
set -e

# Ensure git is available
command -v git >/dev/null 2>&1 || { echo >&2 "Please install git before continuing"; exit 1; }

# Create the temp alias
function dotfiles {
     /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# Clone dotfiles
git clone --bare git@github.com:certifiedloud/dotfiles.git $HOME/.dotfiles

# Checkout the content from the repo to $HOME
dotfiles checkout || echo "Backup or remove existing files and try again"

# Hide untracked files in this local repo
dotfiles config --local status.showUntrackedFiles no
