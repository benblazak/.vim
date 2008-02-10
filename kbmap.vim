" ben blazak -- [~ fall 2006]
" $Id: kbmap.vim,v 1.4 2008-02-10 20:25:14 ben Exp $

"note: from usr_40.1, keymapping
	" :map Normal, Visual and Operator-pending
	" :vmap Visual
	" :nmap Normal
	" :omap Operator-pending
	" :map! Insert and Command-line
	" :imap Insert
	" :cmap Command-line


set backspace=indent,eol,start
set winaltkeys=no


"abbrevations
iabbrev **l ----------------------------------------------------------------------------

"save
nnoremap <C-s> :wa<CR>| inoremap <C-s> <esc>:wa<CR>a
"<esc>
noremap <S-space> <esc>| noremap! kj <esc>
":tabn
noremap <C-tab> :tabn<CR>| noremap! <C-tab> :tabn<CR>
"move view up & down
nnoremap <C-PageUp> H2kM| inoremap <C-PageUp> <esc>H2kM
nnoremap <C-PageDown> L2jM| inoremap <C-PageDown> <esc>L2jM

