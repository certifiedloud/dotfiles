#!/bin/bash

# Ensure git is available
command -v git >/dev/null 2>&1 || { echo >&2 "Please install git before continuing"; exit 1; }

# Create the temp alias
function dotfiles {
     /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# Clone dotfiles
git clone --bare git@github.com:certifiedloud/dotfiles.git $HOME/.dotfiles

# Checkout the content from the repo to $HOME
mkdir -p .config-backup
dotfiles checkout
if [ $? = 0  ]; then
  echo "Checked out config.";
else
  echo "Backing up pre-existing dot files.";
  dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
dotfiles checkout

# Hide untracked files in this local repo
dotfiles config --local status.showUntrackedFiles no
