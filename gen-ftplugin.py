#!/usr/bin/env python

# ben blazak -- 2008-04-20
# $Id: gen-ftplugin.py,v 1.2 2008-04-21 05:35:27 ben Exp $

# a little script to generate ftplugin files from vimscript files where every
# non-comment line is preceded by "[filetype list]\s*++\s*"
#
# originally written to facilitate changing registers when the filetype is
# changed after read-in (as is being done with php files, because some of it is
# php and some xhtml)

import sys, re, datetime

files = {}

for wholeline in open('ftplugin.genfile', 'r'):
	if re.match(r'(^\s*")|(^\s+$)', wholeline):
		continue

	tmp = re.split(r'\s*\+\+\s*', wholeline, 1)
	types = tmp[0]; line = tmp[1]

	for type in types.split():
		if type in files.keys():
			files[type] += line
		else:
			files[type] = '" generated from ftplugin.genfile -- ' \
				+ str(datetime.datetime.now()) + '\n\n' \
				+ 'if &filetype != "' + type \
				+ '" || exists("b:did_ftplugin")\n' \
				+ '\tfinish\n' \
				+ 'endif\n\n' \
				+ line

for type in files.keys():
	open('ftplugin_ben/' + type + '_ben.vim', 'w').write(files[type])

# notes:
#
# contents of file enclosed in an 'if ...' to protect setting from getting
# overridden by other settings, as in the case where a php ftplugin (that i
# didn't write) sources something to do with html, which sources my html
# ftplugin, which overrides @c and @r -- yup


