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
