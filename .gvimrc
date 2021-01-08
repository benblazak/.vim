" set guioptions-=m
" set guioptions-=T

winsize 84 24  "default term size, +4 col for displaying line numbers
autocmd bufreadpre *.asm winsize 144 24  "because we used this format in school

"make comments non-italic in the gui
"(they seem to be non-italic by default in the terminal)
highlight Comment gui=none

