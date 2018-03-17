#!/bin/bash
# deploy the .vim and .vimrc to $HOME
rm -rf ~/.vimrc ~/.vim
cp -r .vimrc .vim ~/
