" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "w4rlockColor"

hi   statusline ctermfg=Black ctermbg=Cyan
hi   StatusLineNC ctermfg=Black ctermbg=Cyan
if version >= 700
  highlight   clear
  highlight   Pmenu         ctermfg=blue  ctermbg=darkgrey
  highlight   PmenuSel      ctermfg=cyan  ctermbg=black
  highlight   PmenuSbar     ctermfg=green ctermbg=blue
  highlight   PmenuThumb    ctermfg=0 ctermbg=cyan
  "highlight CursorLine       cterm=NONE ctermbg=yellow
  highlight CursorLine       ctermfg=0 ctermbg=Darkcyan

  "highlight CursorColumn                  cterm=none ctermbg=DarkRed
endif


" vim: sw=2
