"windows
	"default, use the g++ compiler that was installed with dev-cpp
autocmd bufread *.cpp set makeprg=C:\\Dev-Cpp\\bin\\g++.exe\ \"%\"\ -o\ \"%:r.exe\"
autocmd bufread *.c set makeprg=C:\\Dev-Cpp\\bin\\gcc.exe\ \"%\"\ -o\ \"%:r.exe\"

