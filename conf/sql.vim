set syntax=sql
set ft=mysql.snippets
set omnifunc=sqlcomplete#CompleteSQL

function! Configurar()
    let choice=confirm("Yo Rockeo con: ", "&Oracle\n&MySQL\n&PostgreSQL\n&SqlServer2008")
    if choice == 1
        set ft=or4cle.snippets
        set syntax=oracle
        hi sqlType ctermfg=Cyan
        hi sqlOperator cterm=bold ctermfg=DarkGrey
        hi sqlException cterm=bold ctermfg=Black ctermbg=Red
        hi sqlFrom cterm=bold ctermfg=Blue
        hi sqlParent cterm=bold ctermfg=Blue
    elseif choice == 2
        set ft=mysql.snippets
    endif
endfunction

let g:sqlutil_align_comma = 1
let g:dbext_default_window_use_bottom = 0       "utilizar la ventana de arriba para los resultados
let g:dbext_default_DBI_max_rows=20
let g:dbext_default_buffer_lines=20
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=514CKW4R33NCRIP74D0:dbname=CarritoCompras:extra=-t'
let g:dbext_default_DBI_orientation = 'vertical'
let g:ftplugin_sql_omni_key = '<C-r>'

map   <silent> <F1> :split $HOME/.vim/conf/sql.help <CR>
map   <silent> <F2> :call Configurar() <CR>
vmap  <F4> \sf <CR>
vmap  <silent> <F5> :DBExecVisualSQL<CR>
map   <silent> <F6> :DBListTable <CR>
map   <silent> <F7> :DBSelectFromTableAskName <CR>
nmap  <silent> <C-s> :e $HOME/.vim/conf/sql.vim<CR>

set dictionary=$HOME/.vim/wordlists/sql.list
