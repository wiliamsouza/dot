#!/bin/bash

DEVEL_DIR=$HOME/devel
SOURCE_DIR=$HOME/source
DOT_REPO_DIR=$SOURCE_DIR
LOCAL_BIN=$HOME/.local/bin

mkdir -p $DEVEL_DIR
mkdir -p $SOURCE_DIR
mkdir -p $LOCAL_BIN

sudo apt-get install openssh-server git gnome-tweak-tool vim tmux screen -y

git clone https://github.com/wiliamsouza/dot.git $DOT_REPO_DIR
pushd $DOT_REPO_DIR
bash install.sh
popd
