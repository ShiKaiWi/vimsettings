#!/bin/bash

echo "install all the submodules..."
git submodule init > /dev/null
git submodule update > /dev/null
echo "done!"

echo "deploy the bash rc files..."
cp -R ./bash_utils/bashrcs/ ~/
echo "done!"

echo "deploy the z command..."
if [ ! -d ~/.zc ];then
    mkdir ~/.zc
    cp -r ./bash_utils/z ~/.zc
fi
echo "done!"

echo "deploy the custom commands..."
if [ ! -d ~/bin ]; then
    mkdir ~/bin
fi
cp -R ./bash_utils/custom_commands/ ~/bin
echo "done!"

echo "deploy the vscode settings..."
cp -R ./vscode/ ~/Library/Application\ Support/Code/User/
echo "done!"

echo "clear all the submodules..."
git submodule deinit --all > /dev/null
echo "done!"
