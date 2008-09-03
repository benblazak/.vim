" ben blazak -- 2008-02-05
" $Id: ftype.vim,v 1.20 2008-09-03 17:22:36 ben Exp $

" moved most everything to ftplugin.genfile

"changing filetypes
autocmd bufread *.php setlocal filetype=xhtml
autocmd bufread *.cgi let b:ben_nextfiletype = "xhtml"
autocmd bufread *.txt setlocal filetype=text

