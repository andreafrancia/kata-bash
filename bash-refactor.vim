function! BashExtractVariable()
    let name = input("Variable name: ")
    if name == ''
        return
    endif
    " Enter visual mode (not sure why this is needed since we're already in
    " visual mode anyway)
    normal! gv

    " Replace selected text with the variable name
    exec "normal c$" . name
    " Define the variable on the line above
    exec "normal! O" . name . "="
    " Paste the original selected text to be the variable value
    normal! $p
endfunction
vnoremap ,rv :call BashExtractVariable()<cr>

