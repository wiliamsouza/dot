#!/bin/bash

LOCAL_BIN=$HOME/.local/bin

mkdir -p $LOCAL_BIN

cat .bashrc >> $HOME/.bashrc
cp .inputrc .pythonrc.py .tmux.conf .vimrc .screenrc $HOME
cp tmuxstart $LOCAL_BIN

