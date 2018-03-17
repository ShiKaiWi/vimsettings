#!/bin/bash
# deploy the .vim and .vimrc to $HOME
git submodule init
git submodule update
rm -rf ~/.vimrc ~/.vim
cp -r .vimrc .vim ~/
git submodule deinit --all
