" Bucketize.vim
"
" Author: Randall Hansen (bucketize@sonofhans.net)
" Version: .02
" ----------------------------------------------------------------------------
"
" This program is free software; you can redistribute it and/or modify it
" under the terms of the GNU General Public License as published by the Free
" Software Foundation; either version 2 of the License, or (at your option)
" any later version.
"
" This program is distributed in the hope that it will be useful, but WITHOUT
" ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
" FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
" more details.
"

if exists("loaded_bucketize")
    finish
endif
let loaded_bucketize = 1

map ,' lbi'<ESC>ea'<ESC>
map ," lbi"<ESC>ea"<ESC>
map ,( lbi(<ESC>ea)<ESC>
map ,) lbi( <ESC>ea )<ESC>
map ,[ lbi[<ESC>ea]<ESC>
map ,] lbi[ <ESC>ea ]<ESC>
map ,{ lbi{<ESC>ea}<ESC>
map ,} lbi{ <ESC>ea }<ESC>
map ,< lbi<<ESC>ea><ESC>
map ,> lbi< <ESC>ea ><ESC>
map ,* lbi*<ESC>ea*<ESC>
map ,q lbiq/ <ESC>ea /<ESC>
map ,qa lbiqa/ <ESC>ea /<ESC>
map ,qq lbiqq/ <ESC>ea /<ESC>
map ,qw lbiqw/ <ESC>ea /<ESC>
map ,qx lbiqx/ <ESC>ea /<ESC>

vmap ,' <ESC>`>a'<ESC>`<i'<ESC>
vmap ," <ESC>`>a"<ESC>`<i"<ESC>
vmap ,( <ESC>`>a)<ESC>`<i(<ESC>
vmap ,) <ESC>`>a )<ESC>`<i( <ESC>
vmap ,[ <ESC>`>a]<ESC>`<i[<ESC>
vmap ,] <ESC>`>a ]<ESC>`<i[ <ESC>
vmap ,{ <ESC>`>a}<ESC>`<i{<ESC>
vmap ,} <ESC>`>a }<ESC>`<i{ <ESC>
vmap ,< <ESC>`>a><ESC>`<i<<ESC>
vmap ,> <ESC>`>a ><ESC>`<i< <ESC>
vmap ,* <ESC>`>a*<ESC>`<i*<ESC>
vmap ,q <ESC>`>a /<ESC>`<iq/ <ESC>
vmap ,qa <ESC>`>a /<ESC>`<iqa/ <ESC>
vmap ,qq <ESC>`>a /<ESC>`<iqq/ <ESC>
vmap ,qw <ESC>`>a /<ESC>`<iqw/ <ESC>
vmap ,qx <ESC>`>a /<ESC>`<iqx/ <ESC>

