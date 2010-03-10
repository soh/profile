set nocompatible
set autoread

set exrc            " execute all found .vimrc files

" source $HOME/.vim/rc/vimspell.vimrc
set history=1000
set grepprg=ack\ -a

set nowrap
set pastetoggle=<Leader>p

set hidden
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set hlsearch

set foldmethod=marker

set formatoptions=qln

set linebreak
set backupdir=.,$HOME/tmp/.vim-backup
set directory=.,$HOME/tmp/.vim-swap

set autowrite

set modeline
set modelines=3

set showbreak=

" *** INDENT
set autoindent
set smartindent
set backspace=indent,eol,start
set cinkeys=0{,0},0),:,!^F,o,O,e

" *** TABS
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround

" *** SEARCHING
set incsearch
set ignorecase
set smartcase

set noshowmatch

set foldcolumn=0
set scrolloff=6
set clipboard=unnamed
set wildmenu

" position cursor where nothing exists in visual mode
set virtualedit=block

set printfont=Courier_New:h8
set printoptions=number:y,portrait:y,top:10mm,right:10mm,bottom:10mm,left:5mm,syntax:y,paper:letter

set viminfo='200,\"100,:20,%,n~/.viminfo

" set guioptions=agimrLt
" set guifont=-misc-fixed-medium-r-semicondensed-*-*-120-*-*-c-*-iso8859-1

" plugins
let g:GPGExecutable = '/opt/local/bin/gpg2 --trust-model always'

" let xhtml_no_events_rendering = 1
let xhtml_no_rendering = 1
" html.vim
let g:no_html_tab_mapping = 'yes'
let g:html_tag_case = 'lowercase'
let g:do_xhtml_mappings = 'yes'

let html_no_rendering = 'yes'

" turn off omnicompletion in SQL files, since it uses control-c
let omni_sql_no_default_maps = 1

filetype plugin indent on
colorscheme sohdark
syntax on
let c_minlines = 500

" diff options
set diffopt=filler,context:10
if &diff
    set nowrap
    set foldmethod=manual
else
endif

" turn off paren highlighting
let loaded_matchparen = 1  

" *** perl stuff
let perl_include_pod = 1
let perl_want_scope_in_variables = 1
let perl_extended_vars = 1
let perl_sync_dist = 500
set iskeyword=@,48-57,_,192-255,^:

" *** abbreviations
abbr #~ # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" *** KEY MAPPINGS
" subversion diff
map <F7> <esc>Go--DIFF--<esc>:set ft=diff<cr>:r !svn diff<cr>gg:%foldopen!<cr>

" work with perl __END__ blocks
map \e <esc>o<esc>0Di__END__<esc>k
map \E <esc>/__END__<cr>dd:nohl<cr><C-o>
imap \e <esc>o<esc>0Di__END__<esc>k
imap \E <esc>/__END__<cr>dd:nohl<cr><C-o>

" prevent accidental Ex mode
map Q <C-l>
" bufexplorer
map <silent> <unique> <C-e> :BufExplorer<CR>
let g:bufExplorerSortBy='number'     " Sort by the buffer's number.
let g:bufExplorerShowRelativePath=1  " Show relative paths.

" shell
map S :shell<cr>

map <C-H> <esc>:set ft=xhtml<cr>

map <C-f> <esc>#N
map \s :call MangleImageTag()<cr>

map ,> 10>
map ,< 10<

noremap \v :new ~/.vimrc<cr>
noremap \V :source ~/.vimrc<cr>

map \t <Plug>ShowFunc
map \P :!perldoc %<cr>

" parse GET query string
map \qs :%s/?/<C-v><C-m>    /g<cr>:%s/&\\|;/<C-v><C-m>    /g<cr>:%s/=/ = /g<cr>ggjVG:!sort<cr>:%s/%5B/[/g<cr>:%s/%5D/]/g<cr>/=<cr>gg
" remove leading spaces, then everything after first space on all lines
map \ns :s/^ *//<cr>gv:s/ .*//g<cr>:nohl<cr>
" remove leading spaces, then everything after first space on all lines, replace with comma
map \nS :s/^ *//<cr>gv:s/ .*/,/g<cr>:nohl<cr>
" map \wc :!wc %<cr>

au BufNewFile,BufRead *.pm      setf perl
au BufRead,BufNewFile *.less    setf less

map <C-F4> :!wget -O /tmp/rancid.index.pl.html http://rancid/index.pl<cr>:!gvim "+set ft=html" "+set nowrap" -geom 200x100 /tmp/rancid.index.pl.html<cr><cr>
map <F4> :!wget -O /tmp/rancid.index.pl.html http://rancid/index.pl<cr>

map <F6> :w<cr>:!/usr/local/slash/bin/template-tool -u virtslash -s '%:p'<cr><cr>:!sudo apachectl restart<cr><cr>
map <F9> :!clear;./'%'<CR>
map \<F9> :!chmod ug+x '%'<cr><cr>


map \. v/\.<cr>hx:nohl<cr>i

map \o :nohlsearch<cr>
map \w :set invwrap<cr>

map \O :!open %<cr><cr>
map \L :!less %<cr><cr>
map \S :!sort<cr>
map \C :!cat % \| pbcopy<cr><cr>

map \l :ls<cr>
map <C-b> :bp<CR>
map <C-n> :bn<CR>

map W :w<cr>

" Move by screen lines rather than actual lines
" map j gj
" map k gk
" map <S-Down> <Down>
" map <S-j> j
" map <S-k> k

map <C-p> gq}
map <C-P> gqap

" <TAB> indents
map <TAB> :><cr>

" In insert mode hold down control to do movement
" imap <C-h> <Left>
" imap <C-j> <Down>
" imap <C-k> <Up>
" imap <C-l> <Right>

" parenthesizes a word
map ,( maa0<ESC>mbbma$a x<ESC>`awgebi(<ESC>ea)<ESC>$xx`blx`a
map ,[ maa0<ESC>mbbma$a x<ESC>`awgebi[<ESC>ea]<ESC>$xx`blx`a
map ,{ maa0<ESC>mbbma$a x<ESC>`awgebi{<ESC>ea}<ESC>$xx`blx`a
map ," maa0<ESC>mbbma$a x<ESC>`awgebi"<ESC>ea"<ESC>$xx`blx`a

" virtual clipboard
map - :w! ~/tmp/vimclipboard<cr>:!cat ~/tmp/vimclipboard \| pbcopy<cr><cr>
map _ :w! ~/tmp/vimclipboard<cr>:!cat ~/tmp/vimclipboard \| pbcopy<cr><cr>gvx
"map = :r ~/tmp/vimclipboard<cr> " since this fucks with HTML.vim
"map + k:r ~/tmp/vimclipboard<cr>
map + :r ~/tmp/vimclipboard<cr>

" underline
map \- <ESC>YpVr-
map \= <ESC>YpVr=
imap \- <ESC>YpVr-
imap \= <ESC>YpVr=

" *** TEMPLATES

" :filetype plugin on
" autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>

" mail mapping
" preserve sig, nuke rest of email, sign
map \M <esc>0mMG?--<cr>dg`MkO<cr>r<esc>gg<c-o>

augroup JumpCursorOnEdit " {{{
  au! 
  autocmd BufReadPost * 
    \ if expand("<afile>:p:h") !=? $TEMP | 
    \   if line("'\"") > 1 && line("'\"") <= line("$") | 
    \     let JumpCursorOnEdit_foo = line("'\"") | 
    \     let b:doopenfold = 1 | 
    \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) | 
    \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 | 
    \        let b:doopenfold = 2 | 
    \     endif | 
    \     exe JumpCursorOnEdit_foo |         
    \   endif | 
    \ endif 
  " Need to postpone using "zv" until after reading the modelines. 
  autocmd BufWinEnter * 
    \ if exists("b:doopenfold") | 
    \   exe "normal zv" | 
    \   if(b:doopenfold > 1) | 
    \       exe  "+".1 | 
    \   endif | 
    \   unlet b:doopenfold | 
    \ endif 
augroup END " }}}

set foldtext=MyFoldText()
function! MyFoldText()
	let line = getline(v:foldstart)
	let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g') " }}}
	return v:folddashes . sub
endfunction

" au BufWinLeave *.cgi mkview
" au BufWinEnter *.cgi silent loadview
" au BufWinLeave *.pm mkview
" au BufWinEnter *.pm silent loadview

augroup filetypedetect
	au! BufNewFile,BufRead *.pm			setf perl
	au! BufNewFile,BufRead *.cgi		setf perl
augroup END

" Mmmmm... tab completetion
" function! InsertTabWrapper(direction)
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<tab>"
"     elseif "backward" == a:direction
"         return "\<c-p>"
"     else
"         return "\<c-n>"
"     endif
" endfunction
" 
" inoremap <S-tab> <c-r>=InsertTabWrapper ("backward")<cr>
" inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>

" my filetype file
" if exists("did_load_filetypes")
" 	finish
" endif

