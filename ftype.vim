" ben blazak -- 2008-02-05
" $Id: ftype.vim,v 1.19 2008-05-01 23:06:27 ben Exp $

" moved most everything to ftplugin.genfile

"changing filetypes
autocmd bufread *.php setlocal filetype=xhtml
autocmd bufread *.cgi let b:ben_nextfiletype = "xhtml"

