# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/cody/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

HYPHEN_INSENSITIVE="true"
plugins=(git ssh-agent taskwarrior)

source $ZSH/oh-my-zsh.sh

# User configuration
alias g='gvim --remote-silent'
alias comecomecome='git pull'

export EDITOR=nvim

export PATH=~/.npm-global/bin:$PATH
export TERM=xterm-256color

export PATH=~/bin:$PATH

#shortcuts
alias av='ansible-vault'

# add gems
export PATH=/home/cody/.gem/ruby/2.4.0/bin:$PATH

# virtualenv wrapper
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/code
#source /usr/bin/virtualenvwrapper.sh


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/cody/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/cody/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/cody/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/cody/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

alias ap="awsprofiles"

export GOPATH=$HOME/go
export PATH=$HOME/go/bin:$PATH

alias vim=nvim

# Kops
export KOPS_STATE_STORE=s3://clusters.dev.rchops.com

# Wallpaper
feh --bg-scale ~/Pictures/bg.jpg
