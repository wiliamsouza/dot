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
VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/versions/3.8.1/bin/python
VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.pyenv/versions/3.8.1/bin/virtualenv

# pip install virtualenvwrapper
source $HOME/.pyenv/versions/3.8.1/bin/virtualenvwrapper.sh

# Python
PYTHONSTARTUP=$HOME/.pythonrc.py

# golang
GOROOT=/usr/local/go
GOPATH=$HOME/go
PATH=$GOROOT/bin:$PATH
PATH=$GOPATH/bin:$PATH

# Java
JAVA_HOME=/usr/lib/jvm/jdk1.8.0_111

# PYENV
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# RBENV
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"
PATH=$HOME/.rbenv/versions/2.4.0/bin/:$PATH

export PYTHONPATH
export PYTHONSTARTUP
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
