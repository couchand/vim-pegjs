" Language:    PEG.js
" Maintainer:  Andrew Couch <vim-pegjs@couchand.com>
" URL:         http://github.com/couchand/vim-pegjs
" License:     MIT

if exists("b:current_syntax")
    finish
endif

syn match   pegOperator     "[=/]"
syn region  pegString       start=+"+ end=+"+ skip=+\\"+
syn region  pegHandler      start=+{+ end=+}+ skip=#{[^}]+}#

hi def link pegError           Error
hi def link pegOperator        Operator
hi def link pegString          String
hi def link pegHandler         Special