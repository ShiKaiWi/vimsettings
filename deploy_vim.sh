#!/bin/bash

vundle_module=vim/.vim/bundle/Vundle.vim
# install vundle submodule
git submodule init $vundle_module
git submodule update $vundle_module

# deploy the .vim and .vimrc to $HOME
if [ ! -d ~/.vim ];then
    cp -r vim/.vim ~/
fi
rm -rf ~/.vimrc
cp vim/vimrc ~/.vimrc

vim +PluginInstall +qall
