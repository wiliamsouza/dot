# Wiliam's configuration

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

# set PATH so it includes user's .local private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Bash
PROMPT_DIRTRIM=1
EDITOR='nvim'
alias vi="nvim -p"
alias vim="nvim -p"
unset PROMPT_COMMAND

# powerline
#. $HOME/.pyenv/versions/3.6.0/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

#Virtualenv
PROJECT_HOME=$HOME/Development
WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/versions/3.8.5/bin/python
VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.pyenv/versions/3.8.5/bin/virtualenv

# pip install virtualenvwrapper
source $HOME/.pyenv/versions/3.8.5/bin/virtualenvwrapper.sh

# Python
PYTHONSTARTUP=$HOME/.pythonrc.py
PYTHONBREAKPOINT=ipdb.set_trace

# golang
GOROOT=/usr/local/go
GOPATH=$HOME/go
PATH=$GOROOT/bin:$PATH
PATH=$GOPATH/bin:$PATH

# Java
JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# PYENV
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# RBENV
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"
PATH=$HOME/.rbenv/versions/2.4.0/bin/:$PATH

# NODENV
NODENV_ROOT=$HOME/.nodenv
PATH=$NODENV_ROOT/bin:$PATH
eval "$(nodenv init -)"
PATH=$HOME/.nodenv/versions/14.0.0/bin:$PATH

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
GIT_PAGER=/home/wiliam/.nodenv/versions/14.0.0/lib/node_modules/diff-so-fancy/diff-so-fancy | less --tabs=2 -RFX

# Github
GITHUB_TOKEN=
 
# Google cloud
PROJECT_ID=
CLUSTER_REGION=us-east1

walset() {
    wal -n -i "$@"
    feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
}
(cat ~/.cache/wal/sequences &)
clear

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
