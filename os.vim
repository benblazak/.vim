" ben blazak -- 2008-02-05
" $Id: os.vim,v 1.1 2008-02-05 19:02:44 ben Exp $
"
" os specific stuff

"windows
	"default, use the g++ compiler that was installed with dev-cpp
autocmd bufread *.cpp set makeprg=C:\\Dev-Cpp\\bin\\g++.exe\ \"%\"\ -o\ \"%:r.exe\"
autocmd bufread *.c set makeprg=C:\\Dev-Cpp\\bin\\gcc.exe\ \"%\"\ -o\ \"%:r.exe\"

