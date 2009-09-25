" ben blazak -- [~ fall 2006]
" $Id: kbmap.vim,v 1.16 2009-09-25 00:08:32 ben Exp $

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


"macros
	"line
		"TODO: generalize so it can used to write any chare to eol (rewrite as
		"function?)
inoremap **l <esc>79A-<esc>079lDo

"control
	"save
nnoremap <C-s> :wa<CR>| inoremap <C-s> <esc>:wa<CR>a
	"<esc>
noremap <S-space> <esc>| noremap! kj <esc>
	":tabn
noremap <C-tab> :tabn<CR>| noremap! <C-tab> <esc>:tabn<CR>
	":tabp
noremap <C-S-tab> :tabp<CR>| noremap! <C-S-tab> <esc>:tabp<CR>
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
	"vars
let b:filetype_orig = '' "filetype is not known when this file is sourced
let b:filetype_2 = 'xhtml'
let b:filetype_3 = 'rst'
	"maps
	"	TODO: must be a way to not copy + paste for n > 1 ...
noremap <m-1> :if b:filetype_orig != '' \| let &filetype = b:filetype_orig \| endif \| echo &filetype<cr>
noremap <m-2> :if b:filetype_orig == '' \| let b:filetype_orig = &filetype \| endif \| let &filetype = b:filetype_2 \| echo &filetype<cr>
noremap <m-3> :if b:filetype_orig == '' \| let b:filetype_orig = &filetype \| endif \| let &filetype = b:filetype_3 \| echo &filetype<cr>

