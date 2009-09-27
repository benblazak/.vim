" to get more granular than line, i think id have to be done with python or
" perl - but line granularity is all you want with (un)commenting, so, it
" works out :)
func! Comment(begin, end) range
	try
		if a:begin == ""
			execute a:firstline.",".a:lastline.'s:^:'.a:begin.':'
		else
			execute a:firstline.",".a:lastline.'s:^\('.a:begin.'\)\@!:'.a:begin.':'
		endif
	catch
	endtry
	try
		if a:end == ""
			execute a:firstline.",".a:lastline.'s:$:'.a:end.':'
		else
			execute a:firstline.",".a:lastline.'s:\('.a:end.'\)\@<!$:'.a:end.':'
		endif
	catch
	endtry
endfunc

func! UnComment(begin, end) range
	try
		execute a:firstline.",".a:lastline.'s:^'.a:begin.'::'
	catch
	endtry
	try
		execute a:firstline.",".a:lastline.'s:'.a:end.'$::'
	catch
	endtry
endfunc

