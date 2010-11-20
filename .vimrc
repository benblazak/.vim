set nocompatible
behave xterm

syntax on
filetype plugin indent on

set backup

set showmode		"seems to do this by default, but it cant hurt
set ruler		"display curser position
set number		"show line numbers
set showcmd		"show unfinished commands
set showmatch		"show matching parenthesis
set hlsearch
set incsearch

set history=100
set undolevels=200
set cmdheight=2		"use 2 lines for the command line

set foldmethod=syntax
set foldlevel=999 "open all folds when a file opens by default

set printoptions=number:y


"TODO: make os.vim conditionally set stuff
"source ~/.vim/os.vim
source ~/.vim/kbmap.vim
source ~/.vim/ftype.vim
source ~/.vim/functions.vim

