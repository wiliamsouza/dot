#!/bin/bash

LOCAL_BIN=$HOME/.local/bin

mkdir -p $LOCAL_BIN

cat .bashrc >> $HOME/.bashrc
cp .gitignore_global .inputrc .pythonrc.py .tmux.conf .screenrc $HOME
cp tmuxstart $LOCAL_BIN
chmod +x $LOCAL_BIN/tmuxstart
