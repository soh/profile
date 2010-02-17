let spell_executable = "aspell"
" let spell_auto_type = "tex,mail,text,html,sgml,otl,cvs,none"
let spell_auto_type = ""
let spell_language_list = "english"
let spell_auto_jump = 1

highlight SpellErrors ctermfg=Red guifg=Red cterm=underline term=reverse

map \sh :h vimspell<cr><C-W><C-W>
