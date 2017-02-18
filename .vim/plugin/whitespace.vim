" highlight trailing whitespace
match ErrorMsg '\s\+$'

" tr trailing whitespace
function! Tr()
  %s/\s\+$//e
endfunction
autocmd FileWritePre * :call Tr()
autocmd FileAppendPre * :call Tr()
autocmd FilterWritePre * :call Tr()
autocmd BufWritePre * :call Tr()
