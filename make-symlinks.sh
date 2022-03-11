#!/bin/bash
############################
# make-symlinks.sh
# This script creates symlinks of my configs to their correct location
############################

echo "Let's Create Symlinks"

mkdir ~/old_dotfiles

cd ~/dotfiles/home/
for file in *; do
	echo "Action with $file"
	mv ~/.$file ~/old_dotfiles
	ln -s ~/dotfiles/home/$file ~/.$file
done

cd ~/dotfiles/config/
for file in *; do
	echo "Action with $file"
	mv ~/.config/$file ~/old_dotfiles
	ln -s ~/dotfiles/config/$file ~/.config/$file
done


