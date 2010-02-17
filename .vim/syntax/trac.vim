" Vim syntax file
" Language:	   Trac (http://trac.edgewall.com) Wiki Syntax
" Maintainer:  Josh Partlow jpartlow.at.opensourcery.com
" Last Change: $Id$
" Installation:
"
"   There is no typical 'extension' for a text file in Trac wiki syntax that
"   I'm aware of.  However, I've found it helpful to be able to work with Trac
"   wiki source documents in vim and I use .trac as the extension.
"   
"   This syntax is not complete!
"   
"	To automatically load this file when a .trac file is opened, add the
"	following lines to ~/.vim/filetype.vim:
"
"		augroup filetypedetect
" 			au! BufRead,BufNewFile *.trac		setfiletype trac
" 		augroup END
"
"	You will have to restart vim for this to take effect.  You may also want 
"	to read read ":he new-filetype" so that you know what is going
"	on, and why the above lines work.

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Todo
syn keyword tracTodo   TODO FIXME XXX NOTE

" Headers
syn region  tracHead   matchgroup=tracTag start="^=\{1,5}" end="=\{1,5}\s*$" contains=@tracEmphasis

" Bulleted Lists
syn region  tracBulletString matchgroup=tracBullet start="^\s\+\*" end="$" contains=@tracEmphasis,tracWikiLink,tracNotWikiLink oneline

" Numbered Lists
syn region  tracNumberBulletString matchgroup=tracNumberBullet start="^\s\+\d\+\. " end="$" contains=@tracEmphasis,tracWikiLink,tracNotWikiLink oneline

" Emphasis (bold/italic.)
syn cluster tracEmphasis contains=tracItalic,tracBold,tracBoldItalic
syn region  tracItalic start="'\{2}" end="'\{2}"
syn region  tracBold   start="'\{3}" end="'\{3}"
syn region  tracBoldItalic   start="'\{5}" end="'\{5}"

" Monospace preformat {{{ }}}
syn region  tracPreformat matchgroup=tracTag start="{{{" end="}}}"

" WikiLinks
syn match   tracNotWikiLink "!\<[A-Z]\l\+\([A-Z]\l\+\)\+\>"
syn match   tracWikiLink    "\<[A-Z]\l\+\([A-Z]\l\+\)\+\>"

" TODO HTTP links

" Folding Headers
syn region tracHead1 start="^= " end="\n\(= \)\@=" transparent fold
syn region tracHead2 start="^== " end="\n\(=\{1,2} \)\@=" keepend transparent fold
syn region tracHead3 start="^=== " end="\n\(=\{1,3} \)\@=" keepend transparent fold
syn region tracHead4 start="^==== " end="\n\(=\{1,4} \)\@=" keepend transparent fold
syn region tracHead5 start="^===== " end="\n\(=\{1,5} \)\@=" keepend transparent fold

syn sync minlines=50

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_rst_syn_inits")
  if version < 508
    let did_rst_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink tracTodo         Todo
  HiLink tracHead         Identifier
  HiLink tracTag          Tag
  HiLink tracBullet       Operator
  HiLink tracNumberBullet Operator
"  HiLink tracBulletString String
  HiLink tracItalic       String
  HiLink tracBold         String
  HiLink tracBoldItalic   Include " nice and obvious
  HiLink tracPreformat    PreProc
  HiLink tracNotWikiLink  String
  HiLink tracWikiLink     Underlined
"  HiLink tracHttp         Underlined
  delcommand HiLink
endif

let b:current_syntax = "trac"
