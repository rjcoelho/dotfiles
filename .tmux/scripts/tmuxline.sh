#!/usr/bin/env bash

# open a tmux session and generates tmux colors scheme from vim's current ones
# see https://github.com/edkolev/tmuxline.vim
# usage (open tmux session): $0

VIM_COLORS_SNAPSHOT=$HOME/.tmux/colors/vim-colors.tmux

rm -f $VIM_COLORS_SNAPSHOT
vim +"packadd tmuxline" \
    +"Tmuxline lightline" \
    +"TmuxlineSnapshot $VIM_COLORS_SNAPSHOT" \
    +qall

tmux source-file ~/.tmux/tmux.conf
