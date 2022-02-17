#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# Always color 'tree' output
alias tree='tree -C'
# Run vim as a root with ~/.vim/vimrc
alias sudovim='sudo vim -u ~/.vim/vimrc'
PS1='[\u@\h \W]\$ '
