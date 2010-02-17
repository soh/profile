" Vim color file: sohlight.vim
" Maintainer: Randall Hansen
" Last Change:  2003 June 23

hi clear
set background=light
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "sohlight"

hi Normal       ctermfg=black    ctermbg=white    guifg=#000000                  guibg=#ffffff
hi Comment      ctermfg=    ctermbg=    guifg=#acacac   gui=none
hi Constant     ctermfg=    ctermbg=    guifg=#333366   gui=NONE
hi Identifier   ctermfg=    ctermbg=    guifg=#cc33ff
hi Ignore       ctermfg=    ctermbg=    guifg=red
hi PreProc      ctermfg=    ctermbg=    guifg=magenta
hi Search       ctermfg=    ctermbg=    guifg=Black                    guibg=Yellow
hi Special      ctermfg=    ctermbg=    guifg=magenta
hi Statement    ctermfg=    ctermbg=    guifg=#0000cc   gui=bold
hi Type         ctermfg=    ctermbg=    guifg=#0000cc   gui=none
hi Error        ctermfg=    ctermbg=    guifg=White                    guibg=Red
hi Todo         ctermfg=    ctermbg=    guifg=Blue                     guibg=Yellow

" From the source:

" hi Cursor                                       guifg=Orchid  guibg=fg
" hi Directory  term=bold      ctermfg=LightCyan  guifg=Cyan
" hi ErrorMsg       term=standout  ctermbg=DarkRed    ctermfg=White guibg=Red guifg=White
" hi IncSearch  term=reverse   cterm=reverse      gui=reverse
" hi LineNr     term=underline ctermfg=Yellow                   guifg=Yellow
" hi ModeMsg        term=bold      cterm=bold         gui=bold
" hi MoreMsg        term=bold      ctermfg=LightGreen gui=bold      guifg=SeaGreen
" hi NonText        term=bold      ctermfg=Blue       gui=bold      guifg=Blue
" hi Question       term=standout  ctermfg=LightGreen gui=bold      guifg=Cyan
" hi SpecialKey term=bold      ctermfg=LightBlue  guifg=Cyan
" hi StatusLine term=reverse,bold cterm=reverse   gui=NONE      guifg=White guibg=darkblue
" hi StatusLineNC term=reverse   cterm=reverse    gui=NONE      guifg=white guibg=#333333
" hi Title      term=bold      ctermfg=LightMagenta gui=bold    guifg=Pink
" hi WarningMsg term=standout  ctermfg=LightRed   guifg=Red
" hi Visual     term=reverse   cterm=reverse      gui=NONE      guifg=white guibg=darkgreen


"Cursor     the character under the cursor
"CursorIM   like Cursor, but used when in IME mode |CursorIM|
"Directory  directory names (and other special names in listings)
"DiffAdd        diff mode: Added line |diff.txt|
"DiffChange diff mode: Changed line |diff.txt|
"DiffDelete diff mode: Deleted line |diff.txt|
"DiffText   diff mode: Changed text within a changed line |diff.txt|
"ErrorMsg   error messages on the command line
"VertSplit  the column separating vertically split windows
"Folded     line used for closed folds
"FoldColumn 'foldcolumn'
"IncSearch  'incsearch' highlighting; also used for the text replaced with
"LineNr     line number for ":number" and ":#" commands, and when 'number' option is set.
"ModeMsg        'showmode' message (e.g., "-- INSERT --")
"MoreMsg        |more-prompt|
"NonText        '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
"Normal     normal text
"Question   |hit-enter| prompt and yes/no questions
"Search     last search pattern highlighting (see 'hlsearch')
"SpecialKey Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'.  Generally: text that is displayed differently from what it really is.
"StatusLine status line of current window
"StatusLineNC   status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
"Title      titles for output from ":set all", ":autocmd" etc.
"Visual     Visual mode selection
"VisualNOS  Visual mode selection when vim is "Not Owning the Selection".  Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
"WarningMsg warning messages
"WildMenu   current match in 'wildmenu' completion
