setl fen
setl nocindent
imap <c-t> AJS.log();<esc>hi
imap <c-a> alert();<esc>hi
inoremap <buffer> $r return 
inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

set omnifunc=javascriptcomplete#CompleteJS
function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

call JavaScriptFold()

