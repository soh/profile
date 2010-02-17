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
set backupdir=$HOME/.vim/.backup
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
set scrolloff=3
set clipboard=unnamed

" position cursor where nothing exists in visual mode
set virtualedit=block

set printfont=Courier_New:h8
set printoptions=number:y,portrait:y,top:10mm,right:10mm,bottom:10mm,left:5mm,syntax:y,paper:letter

set viminfo='200,\"100,:20,%,n~/.viminfo

" set guioptions=agimrLt
" set guifont=-misc-fixed-medium-r-semicondensed-*-*-120-*-*-c-*-iso8859-1

" plugins
" let xhtml_no_events_rendering = 1
let xhtml_no_rendering = 1
" turn off omnicompletion in SQL files, since it uses control-c
let omni_sql_no_default_maps = 1
