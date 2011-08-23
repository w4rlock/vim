" {{{AUTHOR
" File: .vimrc
" Author: w4rlock
" Description: 
" Last Modified: June 20, 2011
" }}}

"{{{ SET STYLE AND CONF
"set number                                    " muestra numero de lineas
"set nofoldenable                              " Disable folding
"set mouse=a                                   " enable mouse compatibity
"set clipboard+=unnamed                        " share windows clipboard 
"set cursorline                                " subraya la linea actual
"set cursorcolumn                              " subraya la columna
"set nowritebackup
"set noswapfile
"colorscheme w4rlockColor
"set foldmethod=indent                         " folding para python
"set backup                                    " backup con la version anterior del archivo
"set backupdir=~/.vim/backup                   " donde se guarda el backup
"set nocp                                      " non vi compatible mode
"set tabpagemax=15                             " max tab number
"set clipboard+=unnamed
"set showtabline=0                             " esconde los tabs
"set showmode

"set lz                                        " no volver a dibujar (more fast)
set ttyfast
set report=0                                  " shows how many lines were changed after running a command
set foldmethod=marker                         " folding al leer el archivo
set nocompatible                              " vim extended mode
set viminfo='20,\"50                          " Read/write a .viminfo file, don't store more than 50 lines of registers

"{{{SEARCH
set incsearch                                 " set search automatically show the next match while typing
set hlsearch                                  " Resalta la cadena encontrada (Busquedas)
set ignorecase                                " ignora mayuscula o min. en busquedas
"set wrapscan                                  " cuando llega al fin vuelve al inicio
"}}}
           
"{{{SYNTAX
syntax on                                     " enable syntax highlight
set list
set listchars=tab:..
"set listchars=tab:>.
"set listchars=tab:>.,eof:\\
"}}}

"{{{ENCODING
set encoding=utf-8
set fileencoding=utf-8                        " UTF-8 by default
"}}}

"{{{ INDENT
set expandtab                                 " no real tabs please!
set autoindent                                " autoindent
set smartindent
set copyindent                                " copiado identado
set shiftwidth=2                              " number of spaces for autoindentation
set tabstop=2                                 " number of spaces for tab
set softtabstop=2
"}}}

"{{{STATUSLINE
set showcmd                                   " muestra en el status bar los comandos pulsados
set laststatus=2                              " show statusbar
set statusline=%f\ %y\ %m%r%h%w
set statusline+=%=                            " statusline: separation between lef and right aligned items
set statusline+=[L:\ %l/%L]\ [C:\ %v]\ [%p%%] " statusline: lines number, column number, percent
"}}}

set history=500                               " command history length
set undolevels=500                            " desaze 1000 veces
"set undofile                                  " undo then write file

set hidden                                    " allow movement to another bugger without saving the current one
set relativenumber                            " linea relativa al cursor
set numberwidth=5                             " leer hasta el 99999 lineas
set wildmenu                                  " :comand<tab>

set backspace=indent,eol,start                " make backspace work normally

set noautoread                                " no autoread when file is changed from outside
set noerrorbells                              " no beep or flash for errors

set guifont=Terminus\ 10
set shortmess=at

"{{{GVIM
"set guioptions=aegimrLt                      " set all but toolbar
"}}}

set nowrap
set vb t_vb=
set cmdheight=1                               " Set the command window height to 2 lines, to avoid many cases of having to press <Enter> to continue
set showmatch
set matchtime=3                               " how many tenths of a second to blink matching brackets for
set pastetoggle=<F2>

set modeline
set modelines=3
set ruler                                     " show the cursor position all the time
set scrolloff=5                               " scroll off vertical
set sidescrolloff=5                           " scroll off horizontal
"set sidescroll=1
filetype on                                   " enable filetype detection
filetype plugin on                            " enable plugins
inoremap <S-Del> <backspace>                  " Arregla Shift-Backspace
"}}}

"{{{ TAGLIST
let Tlist_Use_Horiz_Window=0
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Close_On_Select = 0
let Tlist_ProcesMagentas_File_Always = 1
"}}}

"{{{ NERDTREE
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=0
"let NERDTreeIgnore=['\.pyc','\.git','\.svn']
"}}}

"{{{ PLUGINS MAPPINGS

nnoremap <silent> <F9> :TlistToggle<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>

"PLUGIN: qbuf.vim
let g:qb_hotkey = "<F7>"

"}}}

"{{{ OTHERS MAPPINGS
"nmap <F6> /}<CR>zf%<ESC>:nohlsearch<CR>
"}}}

"{{{ WINDOWS CONF AND MAPPINGS
set wmh=0                          "Oculta la linea al minimizar 
" Cambiar de ventanas
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap - 3<C-W>-
nmap + 3<C-W>+

"Redimensionar en split vertical
"nmap < 3<C-W><
"nmap > 3<C-W>>
"}}}

"{{{TABS MAPPINGS
map <silent> tl :tabnext<CR>
map <silent> th :tabprev<CR>
map <silent> tn :tabnew<CR>
map <silent> td :tabclose<CR>
"}}}

"{{{ STYLES (INTELLISENSE AND VIM)
source $HOME/.vim/conf/colors.vim
"}}}

"{{{ CONEXION A MYSQL
let g:dbext_default_window_use_bottom = 0       "utilizar la ventana de arriba para los resultados
let g:dbext_default_DBI_max_rows=20
let g:dbext_default_buffer_lines=20
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=514CKW4R33NCRIP74D0:dbname=CarritoCompras:extra=-t'
let g:dbext_default_DBI_orientation = 'vertical'
"}}}

"{{{ PROGRAMACION
au FileType javascript source $HOME/.vim/conf/js.vim
au FileType php        source $HOME/.vim/conf/php.vim
au FileType lua        source $HOME/.vim/conf/lua.vim
au FileType c          source $HOME/.vim/conf/c.vim
au FileType cpp        source $HOME/.vim/conf/cpp.vim
au FileType cs         source $HOME/.vim/conf/cs.vim
au FileType python     source $HOME/.vim/conf/python.vim
au FileType vbnet      source $HOME/.vim/conf/vb.vim
au FileType sh         source $HOME/.vim/conf/bash.vim
au FileType sql        source $HOME/.vim/conf/sql.vim
au FileType asciidoc   source $HOME/.vim/conf/text.vim

"au BufNewFile,BufRead *.txt source $HOME/.vim/conf/text.vim

"HACER VIM UN EDITOR GENERAL
"Leer documentos office
au BufReadPre  *.doc set readonly
au BufReadPost *.doc %!antiword "%"

"Leer documentos pdf
au BufReadPre *.pdf set readonly
au BufReadPost *.pdf silent %!pdftotext -nopgrk "%" - | fmt -csw78
"}}}

"{{{ OMNI COMPLETION INTELLISENSE
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
"}}}

"{{{TO HTML
let html_number_lines=0
let html_use_css=1
let use_xhtml=1
"}}}

"{{{ OTROS LENGUAGES
au BufRead,BufNewFile *.aspx.cs :r .vim/templates/cs
au BufRead *.as set filetype=actionscript
au BufRead *.hx set filetype=actionscript
au BufRead *.mxml set filetype=actionscript
au BufRead *.rb set filetype=ruby
au BufRead,BufNewFile *.vb setlocal filetype=vbnet 
au BufRead,BufNewFile *.css.aspx setlocal filetype=css
"}}}

"{{{ OTROS MAPEOS
nmap vq :q!<cr>

"let g:closetag_html_style=1 
"au FileType html,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim

"Borrar lineas en blanco
map vl :g/^\s*$/d <CR>
imap vl :g/^\s*$/d <CR>

"Yank at the end line
nnoremap Y y$ 

"visual identation 
vnoremap < <gv
vnoremap > >gv
"}}}

"{{{ ABREVIATIONS
inoremap <buffer> " ""<Esc>i
inoremap <buffer> ' ''<Esc>i
inoremap <buffer> ` ``<Esc>i
inoremap <buffer> ( ()<Esc>i
inoremap <buffer> { {}<Esc>i
inoremap <buffer> [ []<Esc>i

"ab xmlver <?xml version="1.0" encoding="utf-8"?>
"ab xmlcmt <!-- --><ESC>3hi
"ab cdata  <![CDATA[ ]]><ESC>3hi

"ruby
"ab rubsub <%= %><ESC>2hi
"ab rubins <% %><ESC>2hi
"ab rubli  <%= link_to "", :action => "" %><ESC>3F"
"}}}

"{{{ COMPLETION
let g:acp_enableAtStartup = 0 " Disable AutoComplPop. 
let g:neocomplcache_enable_at_startup = 1 " Use neocomplcache. 
let g:neocomplcache_enable_smart_case = 1 " Use smartcase. 
let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion. 
let g:neocomplcache_enable_underbar_completion = 1 " Use underbar completion. 
let g:neocomplcache_min_syntax_length = 3 " Set minimum syntax keyword length. 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 

" Define keyword. 
if !exists('g:neocomplcache_keyword_patterns') 
    let g:neocomplcache_keyword_patterns = {} 
endif 
let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 

" SuperTab like snippets behavior. 
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>" 
"}}}

"{{{CSCOPE
"if has("cscope") && filereadable("/usr/bin/cscope")
   "set csprg=/usr/bin/cscope
   "set csto=0
   "set cst
   "set nocsverb
   "" add any database in current directory
   "if filereadable("cscope.out")
      "cs add cscope.out
   "" else add database pointed to by environment
   "elseif $CSCOPE_DB != ""
      "cs add $CSCOPE_DB
   "endif
   "set csverb
"endif
"}}}

"{{{ RANGER AS FILE MANAGER
function! Ranger()
    " Get a temp file name without creating it
    let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
    " Launch ranger, passing it the temp file name
    silent exec '!RANGER_RETURN_FILE='.tmpfile.' ranger'
    " If the temp file has been written by ranger
    if filereadable(tmpfile)
        " Get the selected file name from the temp file
        let filetoedit = system('cat '.tmpfile)
        exec 'edit '.filetoedit
        call delete(tmpfile)
    endif
    redraw!
endfunction

"nmap     <silent> <C-r> :>  call Ranger()<cr>)</leader>

"}}}
