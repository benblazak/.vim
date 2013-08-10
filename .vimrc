set nocompatible
behave xterm

syntax on
filetype plugin indent on

let c_no_curly_error    = 1
let g:rainbow_guifgs = [ 'RoyalBlue3', 'DarkOrange3', 'DarkOrchid3',
                       \ 'FireBrick', ]
set spell

set backup

set ruler		"display curser position
set number		"show line numbers
set showcmd		"show unfinished commands
set showmatch	"show matching parenthesis
set hlsearch
set incsearch

set cmdheight=2		"use 2 lines for the command line

set foldmethod=syntax
set foldlevel=999	"open all folds when a file opens by default

set formatoptions-=t

set printoptions=number:y


" set where backup, swap, and undo files are kept
set backupdir=~/.vim/.tmp/backup//,.
set directory=~/.vim/.tmp/swap//,.
set undodir=~/.vim/.tmp/undo//,.


source ~/.vim/kbmap.vim
source ~/.vim/ftype.vim
source ~/.vim/functions.vim

