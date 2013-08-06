"so, guioptions=arL
set guioptions-=g
set guioptions-=i
set guioptions-=m
set guioptions-=t
set guioptions-=T

winsize 84 24  "default term size, +4 col for displaying line numbers
autocmd bufreadpre *.asm winsize 144 24  "because we used this format in school

