" swift-completion.vim
" 
" Maintainer: John Rizkalla
" Email: johnrizkalla@hotmail.com
"

if exists("b:loaded_swift_complete")
    finish
endif
let b:loaded_swift_complete = 1

" -- Intialization {{{
"  
if !swiftcomp#CheckPythonVersion()
    finish
endif

call swiftcomp#Bootstrap()

" }}}
 
" -- Settings {{{
  
setlocal completeopt=menuone,longest,preview

" }}}
