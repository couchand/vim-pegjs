" Language:    PEG.js
" Maintainer:  Andrew Couch <vim-pegjs@couchand.com>
" URL:         http://github.com/couchand/vim-pegjs
" License:     MIT

if exists("b:current_syntax")
    finish
endif

syn include @JavaScript syntax/javascript.vim

syn match   pegOperator "[=/?+()]"
syn match   pegDefine   "[a-zA-Z][a-zA-Z0-9]*:"
syn region  pegString   start=+"+ end=+"+ skip=+\\"+
syn region  pegHandler  start=+{+ end=+}+ contains=@JavaScript keepend
syn region  pegClass    start=+\[+ end=+]+

hi def link pegError    Error
hi def link pegOperator Operator
hi def link pegString   String
hi def link pegHandler  Special
hi def link pegDefine   Identifier
hi def link pegClass    Special

let b:current_syntax = 'PEG.js'
