source ~/.vim/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

"ab phpins <?php ?><ESC>2hi
"ab clspan <span style="clear:both; display:block"><!--  --></span>

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=0
let php_folding = 1
let php_sql_query = 1
let php_baselib = 1
let php_parent_error_open = 1
let php_parent_error_close = 1

"autocmd FileType php DoMatchParen
"autocmd FileType php hi MatchParen ctermbg=green

setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
" Asigna phpman para manejar las 'man pages'
setlocal keywordprg=phpman

" Asigna Ctrl-K para ver un hint sobre la sintaxis de la función.
nnoremap <C-K> :call PhpMan()<CR>
inoremap <C-K> <Esc>:call PhpMan()<CR>a
nnoremap <S-K> :call PhpManHint()<CR>

" Ordena mejor el autocompletado y usa diccionario de funciones de PHP.
setlocal complete=],k~/.vim/php.dict,.,w,b,u,i
" Limita el ancho a 80 caracteres.
setlocal textwidth=80
" Indenta tipo C.
setlocal cindent 
" Set 'comments' to format dashed lists in comments.
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,:#
" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".

setlocal fo-=t fo+=croql " Don't concatenate a line that ends with a backslash
setlocal cpo-=C
"compiler tidy

set omnifunc=phpcomplete#CompletePHP

" Mapea keywords de PHP.
"inorea <buffer> <? <? ?><Esc>2hi
"inorea <buffer> <?= <?= ?><Esc>2hi
"inorea <buffer> class class {<CR>}<Esc>k<End>hi
"inorea <buffer> function function() {<CR>}<Esc>k<End>3hi
"inorea <buffer> if if {<CR>}<Esc>k<End>hi
"inorea <buffer> elseif elseif {<CR>}<Esc>k<End>hi
"inorea <buffer> else else {<CR>}<Esc>k<End>o <Esc>xxa
"inorea <buffer> while while {<CR>}<Esc>k<End>hi
"inorea <buffer> for for {<CR>}<Esc>k<End>hi
"inorea <buffer> foreach foreach {<CR>}<Esc>k<End>hi

map <silent> <F1> <esc>:split $HOME/.vim/conf/php.help <CR>
map <silent> <F5> <esc>:EnablePHPFolds <CR>
map <silent> <F6> <esc>:DisablePHPFolds <CR>
