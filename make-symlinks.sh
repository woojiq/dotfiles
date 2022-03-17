#!/bin/bash
############################
# make-symlinks.sh
# This script creates symlinks of my configs to their correct location
############################

echo "Let's Create Symlinks"

mkdir ~/old_dotfiles

# from dotfiles/home to ~
dot=~/dotfiles/home
cd $dot
for file in *; do
	echo "Action with $file"
	mv ~/.$file ~/old_dotfiles
	ln -s $dot/$file ~/.$file
done

# from dotfiles/config to ~/.config
dot=~/dotfiles/config
cd $dot
for file in *; do
	echo "Action with $file"
	mv ~/.config/$file ~/old_dotfiles
	ln -s $dot/$file ~/.config/$file
done

# from dotfiles/desktop to ~
dot=~/dotfiles/desktop
cd $dot
for file in *; do
	echo "Action with $file"
	mv ~/.local/share/applications/$file ~/old_dotfiles
	ln -s $dot/$file ~/.local/share/applications/$file
done
