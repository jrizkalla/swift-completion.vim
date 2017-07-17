" swift-completion.vim
" 
" Maintainer: John Rizkalla
" Email: johnrizkalla@hotmail.com
"

let s:python_dir = expand("<sfile>:p:h:h") . "/python/"

" -- initialization {{{

function! swiftcomp#CheckPythonVersion()
    if has("python3")
        echoerr "Python 3 is not supported yet!"
        return 0
        " When it's supported
        "let s:pyfile_cmd = "py3file"
        "let s:py_cmd = "python3"
        "return 2
    elseif has("python")
        let s:pyfile_cmd = "pyfile" 
        let s:py_cmd = "python"
        return 1
    else
        echoerr "Error: swift-completion.vim requires Python 2 or 3 support!"
        finish
    endif
endfunction

function! swiftcomp#Bootstrap()
    
    echom s:python_dir . "*.py"
    for pyfilename in glob(s:python_dir . "*.py", 0, 1)
        execute s:pyfile_cmd . " " . pyfilename . ""
    endfor
    
endfunction

" }}}
