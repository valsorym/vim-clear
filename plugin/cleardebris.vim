" File: cleardebris.vim
" Author: valsorym <i@valsorym.com>

function ShowSpaces(...)
    " Select and highlight all spaces.
    let @/="\\v(\\s+$)|( +\\ze\\t)"
    let oldhlsearch=&hlsearch
    if !a:0
        let &hlsearch=!&hlsearch
    else
        let &hlsearch=a:1
    end
    return oldhlsearch
endfunction

function TrimSpaces() range
    " Remove spaces.
    let oldhlsearch=ShowSpaces(1)
    execute a:firstline.",".a:lastline."substitute ///gec"
    let &hlsearch=oldhlsearch
endfunction

