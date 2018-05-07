#!/bin/bash

vundle_module=vim/.vim/bundle/Vundle.vim
# install all the submodules
git submodule init $vundle_module
git submodule update $vundle_module

# deploy the .vim and .vimrc to $HOME
rm -rf ~/.vimrc ~/.vim
cp -r vim/.vimrc vim/.vim ~/
vim +PluginInstall +qall

git submodule deinit $vundle_module
