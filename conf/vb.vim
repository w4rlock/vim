"PLUGIN: dbext.vim
":help dbext-connect-profiles-examples
"let g:sql_type_default = 'sqlserver'
"let g:sql_type_default = 'mysql'
"let g:sql_type_default = 'sqlanywhere'
"let g:sqlutil_align_comma = 1
"let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=514CKW4R33NCRIP74D0:dbname=CarritoCompras:extra=-t'
"let g:dbext_default_DBI_orientation = 'vertical'
"let g:ftplugin_sql_omni_key = '<C-r>'

function! NetFold()
  set foldmethod=syntax
  syn region myFold start="#Region" end="#End Region" fold
  syn sync fromstart
  set foldcolumn=2
endfunction

function! NetUnFold()
  set foldmethod=manual
  set foldcolumn=0
  norm zE
endfunction

":call NetFold()
"or
":call NetUnFold()

setfiletype vb
call NetFold()
setlocal filetype=vbnet 
