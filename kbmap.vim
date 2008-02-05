
"note: from usr_40.1, keymapping
	" :map Normal, Visual and Operator-pending
	" :vmap Visual
	" :nmap Normal
	" :omap Operator-pending
	" :map! Insert and Command-line
	" :imap Insert
	" :cmap Command-line


"abbrevations
	"for cpsc-121-02
		"cpsc template
iabbrev _cpsc <esc>:i<cr>/*<space>----------------------------------------------------------------------------<cr><space>*<space><tab>name<tab><tab>ben<space>blazak<cr><space>*<space><tab>course<tab><tab>cs-121,<space>section<space>2<cr><space>*<space><tab>project<tab><tab>no.<space>0<space>(part<space>0)<cr><space>*<space><tab>date<tab><tab>m<space>0,<space>2007<cr><space>*<space><tab>professor<tab>reza<space>ahmadina<cr><space>*<cr><space>*<space>purpose:<cr><space>*<space>-------------------------------------------------------------------------<space>*/<cr><cr>#include<space><iostream><cr>using<space>namespace<space>std;<cr><cr>int<space>main()<cr>{<cr>}<cr><cr>/*<space>-----------------------<space>output<space>---------------------------------------------<cr><space>*<space>-------------------------------------------------------------------------<space>*/<cr><c-c>11k$a
		"begin comment for Heading
iabbrev **h /*<space>----------------------------------------------------------------------------<CR><tab>name<tab><tab>ben blazak<CR>course<tab><tab>cs-121,<space>section<space>2<CR>project<tab><tab>no.<space>0<space>(part<space>0)<CR>date<tab><tab>m<space>00,<space>2007<CR>professor<tab>reza<space>ahmadina<CR><CR>purpose:<esc>bhx<S-A>
		"begin comment (general)
iabbrev **b /*<space>-------------------------------------------------------------------------
		"begin comment (for Output)
iabbrev **o /*<space>-----------------------<space>output<space>---------------------------------------------
		"End comment (for both)
iabbrev **e -------------------------------------------------------------------------<space>*/
	"line
iabbrev **l ----------------------------------------------------------------------------


"(everything)
	"save
nnoremap <C-s> :wa<CR>| inoremap <C-s> <esc>:wa<CR>a
	"<esc>
noremap <S-space> <esc>| noremap! kj <esc>
	":tabn
noremap <C-tab> :tabn<CR>
"lisp
	"save+repl
autocmd bufread *.lsp,*.lisp noremap <f9> :wa<CR>:Repl<CR>| noremap! <f9> <esc>:wa<CR>:Repl<CR>
"c++,java
	"save+compile
autocmd bufread *.c,*.cpp,*.java noremap <f9> :wa<CR>:make<CR>| noremap! <f9> <esc>:wa<CR>:make<CR>
	"run
autocmd bufread *.c,*.cpp,*.java noremap <f10> :Run<CR>| noremap! <f10> <esc>:Run<CR>
	"save+compile+run
autocmd bufread *.c,*.cpp,*.java noremap <c-f9> :wa<CR>:make all run<CR>| noremap! <c-f9> <esc>:wa<CR>:make all run<CR>


"registers
	"lisp
		"to help test functions
autocmd bufread *.lsp,*.lisp let @t="0v$hyi(format t \"~A~%~A~%\" \"\<esc>pa\" \<esc>A)\<esc>j"
autocmd bufread *.lsp,*.lisp let @c="0i; \<esc>j"
autocmd bufread *.lsp,*.lisp let @r="0xxxj"
	"c++
		"function prototypes (position cursor at bottom of file)
autocmd bufread *.c,*.cpp let @p="[[kVy1GPA;\<esc>\<c-o>"
	"c++,java
		"fix the ending comment after pasting the output
autocmd bufread *.c,*.cpp,*.java let @e="0i * \<esc>j"
		"comment out code
autocmd bufread *.c,*.cpp,*.java let @c="0i// \<esc>j"
		"un-comment out code
autocmd bufread *.c,*.cpp,*.java let @r="0xxxj"
		"aid in the formatting of // comments - assumes '//' has
		"  characters before it
autocmd bufread *.c,*.cpp,*.h,*.java let @f="0f/lli  \<esc>Vgq"
	"python, makefile, and perl, for comments
		"comment out code
autocmd bufread *.py,makefile,*.pl let @c="0i \<esc>i#\<esc>j"
		"un-comment out code
autocmd bufread *.py,makefile,*.pl let @r="0xxj"
		"aid in the formatting of # comments - assumes '#' has no
		"  characters before it
autocmd bufread *.py,makefile,*.pl let @f="0li  \<esc>Vgq"


"mapped for use with the dvorak layout on my laptop keyboard

set winaltkeys=no

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

