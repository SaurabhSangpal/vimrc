#!/bin/bash

echo "Checking if ~/.vimrc exists"

if [ -e ~/.vimrc ]; then
	echo "~/.vimrc found"
	DIFF=$(diff .vimrc ~/.vimrc)
	if [ "$DIFF" != "" ]; then
		echo ".vimrc is out of date"
		cp .vimrc ~/.vimrc
		echo "Replaced ~/.vimrc with .vimrc"
	else
		echo "~/.vimrc is up to date"
	fi
else
	echo "~/.vimrc not found"
	cp .vimrc ~/.vimrc
fi

# Checking if Vundle is available

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	echo "Vundle not found!"
	echo "Cloning Vundle into ~/.vim/bundle/Vundle.vim"
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
	echo "Vundle cloned into ~/.vim/bundle/Vundle.vim"
else
	echo "Vundle found!"
fi

# Installing Vundle Plug-Ins

vim +PluginInstall +qall

echo "Setup complete. You can use Vim now"
