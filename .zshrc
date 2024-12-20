# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/wiliam/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(docker golang python pyenv virtualenv) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias vi="nvim -p"
alias vim="nvim -p"

# Languages
PYTHON_VERSION=3.12.4
RUBY_VERSION=3.3.4
NODE_VERSION=22.5.1

# Python
PYTHONSTARTUP=$HOME/.pythonrc.py
PYTHONBREAKPOINT=ipdb.set_trace

#Virtualenv
PROJECT_HOME=$HOME/Development
WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/versions/$PYTHON_VERSION/bin/python
VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.pyenv/versions/$PYTHON_VERSION/bin/virtualenv

# pip install virtualenvwrapper
source $HOME/.pyenv/versions/$PYTHON_VERSION/bin/virtualenvwrapper.sh

# golang
GOROOT=/usr/local/go
GOPATH=$HOME/go
PATH=$GOROOT/bin:$PATH
PATH=$GOPATH/bin:$PATH

# Java
JAVA_HOME=

# PYENV
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# RBENV
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
PATH=$HOME/.rbenv/versions/2.4.0/bin/:$PATH

# NODENV
NODENV_ROOT=$HOME/.nodenv
PATH=$NODENV_ROOT/bin:$PATH
if command -v nodenv 1>/dev/null 2>&1; then
  eval "$(nodenv init -)"
fi
PATH=$HOME/.nodenv/versions/$NODE_VERSION/bin:$PATH

#Flutter
PATH=$HOME/.local/flutter/bin/:$PATH

# Android
ANDROID_HOME=$HOME/Android/Sdk
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH
PATH=$ANDROID_HOME/tools/bin:$PATH

# Android studio
PATH=$HOME/.local/android-studio/bin:$PATH

# ESP8266
PATH=$HOME/.local/xtensa-lx106-elf/bin/:$PATH

# Less
export LESS="-F -X $LESS"

# Git
GIT_PAGER="$HOME/.nodenv/versions/$NODE_VERSION/lib/node_modules/diff-so-fancy/diff-so-fancy | less --tabs=2 -RFX"

# Github
GITHUB_TOKEN=
 
# Google cloud
PROJECT_ID=
CLUSTER_REGION=us-east1

export PYTHONSTARTUP
export PYTHONBREAKPOINT
export PROJECT_HOME
export WORKON_HOME
export JAVA_HOME
export GOROOT
export GOPATH
export PROMPT_DIRTRIM
export PYENV_ROOT
export RBENV_ROOT
export PATH
export EDITOR
export VIRTUALENVWRAPPER_PYTHON
export VIRTUALENVWRAPPER_VIRTUALENV
export LESS
export GIT_PAGER
export GITHUB_TOKEN
export PROJECT_ID
export CLUSTER_REGION
