" highlight trailing whitespace
match ErrorMsg '\s\+$'

" tr trailing whitespace
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()
