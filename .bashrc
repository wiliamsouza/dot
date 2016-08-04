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
EDITOR='vim'
unset PROMPT_COMMAND

# powerline
#. $HOME/home/wiliam/.pyenv/versions/3.5.2/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh

#Virtualenv
PROJECT_HOME=$HOME/devel
WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/versions/3.5.2/bin/python
VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.pyenv/versions/3.5.2/bin/virtualenv

# pip install virtualenvwrapper
source $HOME/.pyenv/versions/3.5.2/bin/virtualenvwrapper.sh

# Android
#ANDROID_HOME=$HOME/.local/android-sdk-linux
#PATH=$ANDROID_HOME/platform-tools:$PATH
#PATH=$ANDROID_HOME/tools:$PATH

# Android studio
PATH=$HOME/.local/android-studio/bin:$PATH

# Python
PYTHONSTARTUP=$HOME/.pythonrc.py

# Java
#JAVA_HOME=/usr/lib/jvm/jdk1.6.0_55
JAVA_HOME=/usr/lib/jvm/jdk1.8.0_25

# Maven
M2_HOME=$HOME/.local/apache-maven
M2=$M2_HOME/bin
PATH=$M2:$PATH

# Gradle
GRADLE_HOME=$HOME/.local/gradle
PATH=$GRADLE_HOME/bin:$PATH

# Ant
ANT_HOME=$HOME/.local/apache-ant
PATH=$ANT_HOME/bin:$PATH

# ccache
USE_CCACHE=1
##export CCACHE_DIR=/home/big/.ccache

# golang
GOROOT=/usr/local/go
GOPATH=$HOME/devel/gocode
PATH=$GOROOT/bin:$PATH
PATH=$GOPATH/bin:$PATH

# PYENV
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# RBENV
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"
PATH=$HOME/.rbenv/versions/2.3.1/bin/:$PATH

# Nodejs
PATH=$HOME/.local/node/bin:$PATH

export M2
export M2_HOME
export GRADLE_HOME
export GOROOT
export GOPATH
export PYTHONPATH
export PYTHONSTARTUP
export PROJECT_HOME
export WORKON_HOME
export ANDROID_HOME
export ANT_HOME
export JAVA_HOME
export PROMPT_DIRTRIM
export USE_CCACHE
export PYENV_ROOT
export RBENV_ROOT
export PATH
export EDITOR
export VIRTUALENVWRAPPER_PYTHON
export VIRTUALENVWRAPPER_VIRTUALENV
