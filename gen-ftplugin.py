#!/usr/bin/env python

# ben blazak -- 2008-04-20
# $Id: gen-ftplugin.py,v 1.4 2008-05-01 23:06:27 ben Exp $

# a little script to generate ftplugin files from vimscript files where every
# non-comment line is preceded by "[filetype list]\s*++\s*"
#
# originally written to facilitate changing registers when the filetype is
# changed after read-in (as is being done with php files, because some of it is
# php and some xhtml)

import sys, re, datetime

files = {}

for line in open('ftplugin.genfile', 'r'):
	if re.match(r'(^\s*")|(^\s+$)', line):
		continue

	line = re.split(r'\s*\+\+\s*', line, 1)

	for type in line[0].split():
		if type in files.keys():
			files[type] += line[1]
		else:
			files[type] = '" generated from ftplugin.genfile -- ' \
				+ str(datetime.datetime.now()) + '\n\n' \
				+ 'if &filetype !="' + type + '"\n' \
				+ '\tfinish\n' \
				+ 'endif\n\n' \
				+ line[1]

for type in files.keys():
	open('ftplugin_ben/' + type + '_ben.vim', 'w').write(files[type])

# notes:
#
# contents of file enclosed in an 'if ...' to protect setting from getting
# overridden by other settings, as in the case where a php ftplugin (that i
# didn't write) sources something to do with html, which sources my html
# ftplugin, which overrides @c and @r -- yup


