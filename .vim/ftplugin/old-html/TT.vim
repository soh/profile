"---------- [% %]
nnoremap <buffer> ;tt i[% . %]<esc>F.s
vnoremap <buffer> ;tt <esc>`>a %]<esc>`<i[% <esc>l
inoremap <buffer> ;tt [% . %]<esc>F.s

"---------- [% END %]
nnoremap <buffer> ;tn i[% END %]<esc>
inoremap <buffer> ;tn [% END %]

"---------- [% ELSE %]
nnoremap <buffer> ;tl i[% ELSE %]<esc>
inoremap <buffer> ;tl [% ELSE %]

"---------- [% ELSIF %]
nnoremap <buffer> ;tf i[% IF . %]<esc>F.s
inoremap <buffer> ;tf [% IF . %]<esc>F.s
vnoremap <buffer> ;tf <esc>`>a. %]<esc>`<i[% IF <esc>f.s

"---------- [% ELSIF %]
nnoremap <buffer> ;tL i[% ELSIF . %]<esc>F.s
inoremap <buffer> ;tL [% ELSIF . %]<esc>F.s
vnoremap <buffer> ;tL <esc>`>a. %]<esc>`<i[% ELSIF <esc>f.s

"---------- [% UNLESS %]
nnoremap <buffer> ;tu i[% UNLESS . %]<esc>F.s
inoremap <buffer> ;tu [% UNLESS . %]<esc>F.s

"---------- [% INCLUDE %]
nnoremap <buffer> ;ti i[% INCLUDE . %]<esc>F.s
inoremap <buffer> ;ti [% INCLUDE . %]<esc>F.s
vnoremap <buffer> ;ti <esc>`>a. %]<esc>`<i[% INCLUDE <esc>f.s

"---------- [% %]
" nnoremap <buffer> ;t O<em></em><esc>F<i
" vnoremap <buffer> ;t <esc>`>a</em><esc>`<i<em><esc>l
" inoremap <buffer> ;t <em></em><esc>F<i
" 
"---------- [% %]
" nnoremap <buffer> ;t O<em></em><esc>F<i
" vnoremap <buffer> ;t <esc>`>a</em><esc>`<i<em><esc>l
" inoremap <buffer> ;t <em></em><esc>F<i
" 
"---------- [% %]
" nnoremap <buffer> ;t O<em></em><esc>F<i
" vnoremap <buffer> ;t <esc>`>a</em><esc>`<i<em><esc>l
" inoremap <buffer> ;t <em></em><esc>F<i
" 
"---------- [% %]
" nnoremap <buffer> ;t O<em></em><esc>F<i
" vnoremap <buffer> ;t <esc>`>a</em><esc>`<i<em><esc>l
" inoremap <buffer> ;t <em></em><esc>F<i
" 
" ti: [% IF  %]
" tu: [% UNLESS %]
" tc: [% INCLUDE %]
