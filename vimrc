syntax on

if has('gui_running')
    winsize 84 24
    set background=light
    colorscheme solarized8
    highlight Comment gui=none
else
    set background=dark
    colorscheme solarized8_high
    highlight Comment cterm=none
endif

set ruler
set number
set spell
set hlsearch
set incsearch

set directory=~/.vim/_swap//,.
set backup backupdir=~/.vim/_backup//,.
set undofile undodir=~/.vim/_undo//,.

inoremap df <esc>
inoremap .<c-l> <esc>yl80p<esc>079lD
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a
nnoremap <c-h> :noh<cr>
nnoremap .<c-n> :next<cr>
inoremap .<c-n> <esc>:next<cr>
nnoremap .<c-p> :previous<cr>
inoremap .<c-p> <esc>:previous<cr>
map <c-c> :call Comment(w:comment_begin, w:comment_end)<cr>
map <c-u> :call Uncomment(w:comment_begin, w:comment_end)<cr>

" -----------------------------------------------------------------------------

autocmd filetype * setlocal autoindent formatoptions+=or
autocmd filetype * setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd filetype * let w:comment_begin='# '|let w:comment_end=''

autocmd filetype json setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype lisp setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype lua setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype tex setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

autocmd filetype c let w:comment_begin='// '
autocmd filetype cpp let w:comment_begin='// '
autocmd filetype haskell let w:comment_begin='-- '
autocmd filetype lisp let w:comment_begin='; '
autocmd filetype lua let w:comment_begin='-- '
autocmd filetype markdown let w:comment_begin='<!-- '|let w:comment_end=' -->'
autocmd filetype tex let w:comment_begin='% '
autocmd filetype vim let w:comment_begin='" '

" -----------------------------------------------------------------------------

function! Comment(begin, end) range
    silent execute a:firstline.','.a:lastline.'s:^:'.a:begin.':'
    silent execute a:firstline.','.a:lastline.'s:$:'.a:end.':'
endfunc

function! Uncomment(begin, end) range
    silent execute a:firstline.','.a:lastline.'s:^'.a:begin.'::'
    silent execute a:firstline.','.a:lastline.'s:'.a:end.'$::'
endfunc

