" to get more granular than line, i think id have to be done with python or
" perl - but line granularity is all you want with (un)commenting, so, it
" works out :)
func! Comment(begin, end) range
	try
        execute a:firstline.",".a:lastline.'s:^:'.a:begin.':'
	catch
	endtry
	try
        execute a:firstline.",".a:lastline.'s:$:'.a:end.':'
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

