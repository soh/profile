" Description:	mail NO indenter
" Author:	Randall Hansen
" Last Change:	4 March, 2005

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1


" [-- local settings (must come before aborting the script) --]
setlocal indentexpr=
" setlocal indentkeys=o,O,*<Return>,<>>,<bs>,{,}
setlocal indentkeys=
