#!/bin/bash

LOCAL_BIN=$HOME/.local/bin

mkdir -p $LOCAL_BIN

cat .bashrc >> $HOME/.bashrc
cp .gitignore_global .inputrc .pythonrc.py .tmux.conf .screenrc $HOME
mkdir -p $HOME/.config/nvim/init.vim
cp init.vim $HOME/.config/nvim/
cp tmuxstart $LOCAL_BIN
chmod +x $LOCAL_BIN/tmuxstart
cp .Xmodmap $HOME
