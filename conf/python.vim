set syntax=python
set nocindent
let python_highlight_all = 1

set omnifunc=pythoncomplete#Complete
"au BufNewFile,BufRead *.jinja set syntax=htmljinja
"au BufNewFile,BufRead *.mako set ft=makoau FileType python map <buffer> <leader>1 /class 
map <buffer> <leader>2 /def 
map <buffer> <leader>C ?class 
map <buffer> <leader>D ?def 

syn keyword pythonDecorator True None False self
