" ben blazak -- 2008-02-05
" $Id: os.vim,v 1.2 2008-02-09 00:29:49 ben Exp $

"windows
	"default, use the g++ compiler that was installed with dev-cpp
autocmd bufread *.cpp set makeprg=C:\\Dev-Cpp\\bin\\g++.exe\ \"%\"\ -o\ \"%:r.exe\"
autocmd bufread *.c set makeprg=C:\\Dev-Cpp\\bin\\gcc.exe\ \"%\"\ -o\ \"%:r.exe\"

