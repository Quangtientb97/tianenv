" Script Name: indentLine.vim
" Version:     1.0.2
" Last Change: Dec 22, 2012
" Author:      Yggdroot <archofortune@gmail.com>
"
" Description: To show the indent line

"if !has("conceal") || exists("g:loaded_indentLine")
"    finish
"endif
"let g:loaded_indentLine = 1

if !exists("g:indentLine_char")
    " | ¦ ┆ │
"    let g:indentLine_char = "┆"
"    let g:indentLine_char = "¦"
    let g:indentLine_char = "│"
endif

if !exists("g:indentLine_indentLevel")
    let g:indentLine_indentLevel = 20
endif

set conceallevel=1
set concealcursor=inc

function! <SID>SetIndentLine()
    let space = &l:shiftwidth
    for i in range(space+1, space * g:indentLine_indentLevel + 1, space)
        exec 'syn match IndentLine /\(^\s\+\)\@<=\%'.i.'v / containedin=ALL conceal cchar=' . g:indentLine_char
    endfor
endfunction

function! <SID>ResetWidth(...)
    if a:0 > 0
        let &l:shiftwidth = a:1
    endif
    syn clear IndentLine
    call <SID>SetIndentLine()
endfunction


call <SID>SetIndentLine()

hi Conceal ctermbg=none ctermfg=239   guifg=none guibg=none
set concealcursor=ic


command! -nargs=? ResetIndentLines call <SID>ResetWidth(<f-args>)

" vim:et:ts=4:sw=4:fdm=marker:fmr={{{,}}}
