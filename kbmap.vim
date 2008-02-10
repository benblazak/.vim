" ben blazak -- [~ fall 2006]
" $Id: kbmap.vim,v 1.3 2008-02-10 20:23:47 ben Exp $

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


"mapped for use with the dvorak layout on my laptop keyboard
"symbols
	"qwerty: '
noremap � =| noremap! � =
"number pad
	"qwerty: nm,.jkluio
noremap � 0| noremap! � 0
noremap � 1| noremap! � 1
noremap � 2| noremap! � 2
noremap � 3| noremap! � 3
noremap � 4| noremap! � 4
noremap � 5| noremap! � 5
noremap � 6| noremap! � 6
noremap � 7| noremap! � 7
noremap � 8| noremap! � 8
noremap � 9| noremap! � 9
	"qwerty: wqesdx
noremap � A| noremap! � A
noremap � B| noremap! � B
noremap � C| noremap! � C
noremap � D| noremap! � D
noremap � E| noremap! � E
noremap � F| noremap! � F
	"qwerty: 'p[;/hy
noremap � x| noremap! � x
noremap � *| noremap! � *
noremap � /| noremap! � /
noremap � -| noremap! � -
noremap � +| noremap! � +
noremap � .| noremap! � .
noremap � ,| noremap! � ,
	"qwerty: b
noremap � x| noremap! � x

