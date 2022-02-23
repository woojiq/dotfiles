#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vim bashrc xinitrc bash_profile xserverrc"    # list of files/folders to symlink in homedir
files_config="i3" # list of files/folders to symlink in .config folder

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# go to the dotfiles directory
echo "Go to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
echo "Moving any existing dotfiles from ~ to $olddir..."
for file in $files; do
    echo "Moving .$file to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
    echo "...done"
done

# move any existing dotfiles in .config to dotfiles_old directory, then create symlinks 
echo "Moving any existing dotfiles from ~/.config to $olddir..."
for file in $files_config; do
    echo "Moving $file to $olddir"
    mv ~/.config/$file ~/dotfiles_old/
    echo "Creating symlink to $file in .config directory."
    ln -s $dir/$file ~/.config/$file
    echo "...done"
done
