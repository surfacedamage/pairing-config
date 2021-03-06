" Markdown syntax highlighting
  augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
    autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:>
    autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:>
  augroup END

" Allow old-school vim directory exploring
let NERDTreeHijackNetrw = 0

" Add some alignment patterns for :Tabular
function! CustomTabularPatterns()
  AddTabularPattern!  symbols         / :/l0
  AddTabularPattern!  hash            /=>/
  AddTabularPattern!  chunks          / \S\+/l0
endfunction
autocmd VimEnter * call CustomTabularPatterns()
