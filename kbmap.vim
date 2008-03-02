" ben blazak -- [~ fall 2006]
" $Id: kbmap.vim,v 1.6 2008-03-02 23:37:32 ben Exp $

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
":tabp
noremap <C-S-tab> :tabp<CR>| noremap! <C-S-tab> :tabp<CR>
"move view up & down
nnoremap <C-PageUp> <PageUp>| inoremap <C-PageUp> <PageUp>
nnoremap <C-PageDown> <PageDown>| inoremap <C-PageDown> <PageUp>
nnoremap <PageUp> H2kM| inoremap <PageUp> <esc>H2kM
nnoremap <PageDown> L2jM| inoremap <PageDown> <esc>L2jM

