" ben blazak -- [~ fall 2006]
" $Id: kbmap.vim,v 1.9 2008-05-09 04:33:56 ben Exp $

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
nnoremap <PageUp> 2<c-y>| inoremap <PageUp> <esc>2<c-y>
nnoremap <PageDown> 2<c-e>| inoremap <PageDown> <esc>2<c-e>

"make stuff
	"save+compile
noremap <f9> :wa<CR>:make<CR>| noremap! <f9> <esc>:wa<CR>:make<CR>
	"run
noremap <f10> :make run<CR>| noremap! <f10> <esc>:make run<CR>
	"save+compile+run
noremap <c-f9> :wa<CR>:make all run<CR>| noremap! <c-f9> <esc>:wa<CR>:make all run<CR>

"change filetype
nnoremap <m-2> :call<space>FileTypeNext()<cr>| inoremap <m-2> <esc>:call<space>FileTypeNext()<cr>a

