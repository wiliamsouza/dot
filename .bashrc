#Virtualenv
# pip install virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
PROJECT_HOME=$HOME/devel
WORKON_HOME=$HOME/devel

# Android
ANDROID_HOME=$HOME/bin/android-sdk-linux
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH

# Python
PYTHONSTARTUP=$HOME/.pythonrc.py

# Java
#JAVA_HOME=/usr/lib/jvm/jdk1.6.0_45
JAVA_HOME=/usr/lib/jvm/jdk1.7.0_51

# Maven
M2_HOME=$HOME/bin/apache-maven
M2=$M2_HOME/bin
PATH=$M2:$PATH

# Gradle
GRADLE_HOME=$HOME/bin/gradle
PATH=$GRADLE_HOME/bin:$PATH

# Ant
ANT_HOME=$HOME/bin/apache-ant
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
PATH=$HOME/bin/eclipse:$PATH

# Bash
PROMPT_DIRTRIM=1

# PYENV
#PYENV_ROOT=$HOME/.pyenv
#PATH=$PYENV_ROOT/bin:$PATH
#eval "$(pyenv init -)"

# Nodejs
PATH=$HOME/bin/node/bin:$PATH

# Plan9port
##PLAN9=$HOME/source/plan9
##PATH=$PLAN9/bin:$PATH

# Alias
alias gst="git status"

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
export PLAN9
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
