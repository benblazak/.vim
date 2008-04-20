" ben blazak -- 2008-02-05
" $Id: ftype.vim,v 1.14 2008-04-20 19:54:25 ben Exp $

" note: using "filetype" instead of "bufread" doesn't seem to work...


"make stuff
	"save+compile
autocmd bufread * noremap <f9> :wa<CR>:make<CR>| noremap! <f9> <esc>:wa<CR>:make<CR>
	"run
autocmd bufread * noremap <f10> :make run<CR>| noremap! <f10> <esc>:make run<CR>
	"save+compile+run
autocmd bufread * noremap <c-f9> :wa<CR>:make all run<CR>| noremap! <c-f9> <esc>:wa<CR>:make all run<CR>

"indent
autocmd bufread *.c,*.cpp,*.h setlocal shiftwidth=8
autocmd bufread *.lsp,*.lisp,*.htm,*.html,*.xml,*.php setlocal expandtab
autocmd bufread *.lsp,*.lisp,*.htm,*.html,*.xml,*.php setlocal shiftwidth=2
autocmd bufread *.py,*.pl,*.java setlocal shiftwidth=4
autocmd bufread *.py,*.pl,*.java setlocal tabstop=4


"display & folding
autocmd bufread *.txt setlocal linebreak
autocmd bufread *.java set include=^#\s*import
autocmd bufread *.java set includeexpr=substitute(v:fname,'\\.','/','g')
autocmd bufread *.java set foldmethod=indent

"movement
autocmd bufread *.txt nnoremap j gj
autocmd bufread *.txt nnoremap k gk
autocmd bufread *.txt vnoremap j gj
autocmd bufread *.txt vnoremap k gk
autocmd bufread *.txt nnoremap <Down> gj
autocmd bufread *.txt nnoremap <Up> gk
autocmd bufread *.txt vnoremap <Down> gj
autocmd bufread *.txt vnoremap <Up> gk
autocmd bufread *.txt inoremap <Down> <C-o>gj
autocmd bufread *.txt inoremap <Up> <C-o>gk

"registers
	"comment out code
autocmd bufread *.c,*.cpp,*.java let @c="0i// \<esc>j"
autocmd bufread *.lsp,*.lisp let @c="0i; \<esc>j"
autocmd bufread *.py,makefile,*.pl,*.sh let @c="0i \<esc>i#\<esc>j"
autocmd bufread *.css let @c="0i/* \<esc>A */\<esc>j"
	"un-comment out code
autocmd bufread *.c,*.cpp,*.java let @r="0xxxj"
autocmd bufread *.lsp,*.lisp let @r="0xxj"
autocmd bufread *.py,makefile,*.pl,*.sh let @r="0xxj"
autocmd bufread *.css let @r="0xxx$xxxj"
	"generate code
		"to help test functions
autocmd bufread *.lsp,*.lisp let @t="0v$hyi(format t \"~A~%~A~%\" \"\<esc>pa\" \<esc>A)\<esc>j"
		"function prototypes (position cursor at bottom of file)
autocmd bufread *.c,*.cpp let @p="[[kVy1GPA;\<esc>\<c-o>"
		"get functions (very basic..)
autocmd bufread *.java let @g="$F F lvf hy}Opublic \<esc>p\<esc>$bvey	a get\<esc>pblll~A() { return \<esc>pa; }\<esc>j"
	"aid in formatting comments
		"// -- assumes '//' has characters before it
autocmd bufread *.c,*.cpp,*.h,*.java let @f="0f/lli  \<esc>Vgq"
		"# -- assumes '#' has no characters before it
autocmd bufread *.py,makefile,*.pl let @f="0li  \<esc>Vgq"
		"/**/ -- fix formatting after pasting inside it
autocmd bufread *.c,*.cpp,*.java let @e="0i * \<esc>j"

"abbreviations
autocmd bufread *.java iabbr sysout System.out.print(
autocmd bufread *.java iabbr sysoutl System.out.println(
autocmd bufread *.java iabbr sysoutf System.out.printf(

"auto formatting
autocmd bufread *.py setlocal formatoptions+=or

"changing filetypes
autocmd bufread *.php setlocal filetype=xhtml
autocmd bufread *.php nnoremap <m-1> :setlocal<space>filetype=php<cr>| inoremap <m-1> <esc>:setlocal<space>filetype=php<cr>a
autocmd bufread *.php nnoremap <m-2> :setlocal<space>filetype=xhtml<cr>| inoremap <m-2> <esc>:setlocal<space>filetype=xhtml<cr>a

