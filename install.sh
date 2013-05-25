#!/bin/bash

echo "Remember to run install_base.sh to install and configure your system"
echo "Remember to run install_externals.sh to download and build extrenal projects to your \$HOME/bin"
echo "Remember to run install_desktop.sh to install useful desktop applications"
echo ""
echo "Installing files..."
echo "Warning - this will override your local configuration. Enter to continue."
read temp

echo "Updating submodules..."
git submodule init
git submodule update

echo "Backing current files..."
mkdir ~/dot-backups
cp ~/.bash_aliases ~/dot-backups
cp ~/.bash_exports ~/dot-backups
cp ~/.bash_profile ~/dot-backups
cp ~/.bashrc ~/dot-backups
cp ~/.tmux.conf ~/dot-backups
cp ~/.vimrc ~/dot-backups
cp ~/.gitconfig ~/dot-backups

echo "Installing..."
BASEPATH=$PWD
cd ~/
ln -bsf $BASEPATH/.bash_aliases
ln -bsf $BASEPATH/.bash_exports
ln -bsf $BASEPATH/.bash_profile
ln -bsf $BASHPATH/.bashrc
ln -bsf $BASEPATH/.tmux.conf
ln -bsf $BASEPATH/.vimrc
ln -bsf $BASEPATH/.vim
cp $BASEPATH/.gitconfig ~/

echo "Registering your git name/email"
echo -n "[Git] Enter your name: "
read name
echo -n "[Git] Enter your email address: "
read email
git config --global user.name "$name"
git config --global user.email "$email"

