#!/bin/bash
# deploy the .vim and .vimrc to $HOME
rm -rf ~/.vimrc ~/.vim
cp -r .vimrc .vim ~/
cd ~/.vim/bundle/tern_for_vim
npm install
