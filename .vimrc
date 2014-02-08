execute pathogen#infect()

set nocompatible
behave xterm

syntax enable
set background=light
filetype plugin indent on

if has('gui_running')
    colorscheme solarized
endif

let c_no_curly_error    = 1
let g:rainbow_guifgs = [ 'RoyalBlue3', 'DarkOrange3', 'DarkOrchid3',
                       \ 'FireBrick', ]
set spell

set backup

set ruler      "display curser position
set number     "show line numbers
set showcmd    "show unfinished commands
set showmatch  "show matching parenthesis
set hlsearch
set incsearch

set cmdheight=2  "use 2 lines for the command line

set foldmethod=syntax
set foldlevel=999  "open all folds when a file opens by default

set printoptions=number:y

set exrc    "also source the .vimrc in the current directory, if it exists
set secure  "to make `set exrc` safer


" set where backup, swap, and undo files are kept
set backupdir=~/.vim/.tmp/backup//,.
set directory=~/.vim/.tmp/swap//,.
set undodir=~/.vim/.tmp/undo//,.


source ~/.vim/kbmap.vim
source ~/.vim/ftype.vim
source ~/.vim/functions.vim

