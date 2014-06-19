# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
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
##. $HOME/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

#Virtualenv
PROJECT_HOME=$HOME/devel
WORKON_HOME=$HOME/.virtualenvs
# pip install --user virtualenvwrapper
#source $HOME/.local/bin/virtualenvwrapper.sh
# pip install virtualenvwrapper
#source /usr/local/bin/virtualenvwrapper.sh
# apt-get install virtualenvwrapper
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# Android
ANDROID_HOME=$HOME/.local/bin/android-sdk-linux
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH

# Python
PYTHONSTARTUP=$HOME/.pythonrc.py

# Java
#JAVA_HOME=/usr/lib/jvm/jdk1.6.0_55
JAVA_HOME=/usr/lib/jvm/jdk1.8.0_05

# Maven
M2_HOME=$HOME/.local/bin/apache-maven
M2=$M2_HOME/bin
PATH=$M2:$PATH

# Gradle
GRADLE_HOME=$HOME/.local/bin/gradle
PATH=$GRADLE_HOME/bin:$PATH

# Ant
ANT_HOME=$HOME/.local/bin/apache-ant
PATH=$ANT_HOME/bin:$PATH

# ccache
USE_CCACHE=1
##export CCACHE_DIR=/home/big/.ccache

# golang
GOROOT=/usr/local/go
GOPATH=$HOME/devel/gocode
PATH=$GOROOT/bin:$PATH
PATH=$GOPATH/bin:$PATH

# eclipse
PATH=$HOME/.local/bin/eclipse:$PATH

# PYENV
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# RBENV
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"

# Nodejs
PATH=$HOME/.local/bin/node/bin:$PATH

# Plan9port
##PLAN9=$HOME/source/plan9
##PATH=$PLAN9/bin:$PATH

# Github atom-shell
PATH=$HOME/.local/bin/atom-shell:$PATH

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
export PLAN9
export PATH
export EDITOR
