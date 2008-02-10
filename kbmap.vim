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
noremap ­ =| noremap! ­ =
"number pad
	"qwerty: nm,.jkluio
noremap Â 0| noremap! Â 0
noremap Í 1| noremap! Í 1
noremap × 2| noremap! × 2
noremap Ö 3| noremap! Ö 3
noremap È 4| noremap! È 4
noremap Ô 5| noremap! Ô 5
noremap Î 6| noremap! Î 6
noremap Ç 7| noremap! Ç 7
noremap Ã 8| noremap! Ã 8
noremap Ò 9| noremap! Ò 9
	"qwerty: wqesdx
noremap ¢ A| noremap! ¢ A
noremap ¼ B| noremap! ¼ B
noremap ¾ C| noremap! ¾ C
noremap Ï D| noremap! Ï D
noremap Å E| noremap! Å E
noremap Ñ F| noremap! Ñ F
	"qwerty: 'p[;/hy
noremap ß x| noremap! ß x
noremap Ì *| noremap! Ì *
noremap ¿ /| noremap! ¿ /
noremap Ó -| noremap! Ó -
noremap Ú +| noremap! Ú +
noremap Ä .| noremap! Ä .
noremap Æ ,| noremap! Æ ,
	"qwerty: b
noremap Ø x| noremap! Ø x

