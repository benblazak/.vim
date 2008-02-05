" ben blazak -- 2008-02-05
" $Id: ftype.vim,v 1.1 2008-02-05 19:02:44 ben Exp $

" note: using "filetype" instead of "bufread" doesn't seem to work...


"make stuff
	"save+compile
autocmd bufread *.c,*.cpp,*.h,*.java,*.lsp,*.lisp noremap <f9> :wa<CR>:make<CR>| noremap! <f9> <esc>:wa<CR>:make<CR>
	"run
autocmd bufread *.c,*.cpp,*.h,*.java,*.lsp,*.lisp noremap <f10> :make run<CR>| noremap! <f10> <esc>:make run<CR>
	"save+compile+run
autocmd bufread *.c,*.cpp,*.h,*.java,*.lsp,*.lisp noremap <c-f9> :wa<CR>:make all run<CR>| noremap! <c-f9> <esc>:wa<CR>:make all run<CR>

"indent
autocmd bufread *.c,*.cpp,*.h setlocal shiftwidth=8
autocmd bufread *.lsp,*.lisp,*.htm,*.html,*.xml setlocal expandtab
autocmd bufread *.lsp,*.lisp,*.htm,*.html,*.xml setlocal shiftwidth=2
autocmd bufread *.py,*.pl,*.java setlocal shiftwidth=4
autocmd bufread *.py,*.pl,*.java setlocal tabstop=4


"display
autocmd bufread *.txt setlocal linebreak

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
	"un-comment out code
autocmd bufread *.c,*.cpp,*.java let @r="0xxxj"
autocmd bufread *.lsp,*.lisp let @r="0xxj"
autocmd bufread *.py,makefile,*.pl let @r="0xxj"
	"generate code
		"to help test functions
autocmd bufread *.lsp,*.lisp let @t="0v$hyi(format t \"~A~%~A~%\" \"\<esc>pa\" \<esc>A)\<esc>j"
		"function prototypes (position cursor at bottom of file)
autocmd bufread *.c,*.cpp let @p="[[kVy1GPA;\<esc>\<c-o>"
	"aid in formatting comments
		"// -- assumes '//' has characters before it
autocmd bufread *.c,*.cpp,*.h,*.java let @f="0f/lli  \<esc>Vgq"
		"# -- assumes '#' has no characters before it
autocmd bufread *.py,makefile,*.pl let @f="0li  \<esc>Vgq"
		"/**/ -- fix formatting after pasting inside it
autocmd bufread *.c,*.cpp,*.java let @e="0i * \<esc>j"

