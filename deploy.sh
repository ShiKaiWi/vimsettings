#!/bin/bash

# install all the submodules
git submodule init
git submodule update

# deploy the bash rc files
cp -R ./bash_utils/bashrcs/ ~/

# deploy the z command
if [ ! -d ~/.zc ];then
    mkdir ~/.zc
    cp -r ./bash_utils/z ~/.zc
fi

# deploy the custom commands
if [ ! -d ~/bin ]; then
    mkdir ~/bin
fi
cp -R ./bash_utils/custom_commands/ ~/bin


# clear all the submodules
git submodule deinit --all
