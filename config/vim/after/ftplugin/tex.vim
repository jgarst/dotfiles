" set tab width to 2 spaces
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2


" ruler at 81 characters
set colorcolumn=81

" `lacheck` has enough false positives that I don't want it.
let b:ale_linters = [ 'alex'
"\                  , 'lacheck'
\                   , 'chktex'
\                   , 'proselint'
\                   , 'redpen'
\                   , 'texlab'
\                   , 'textlint'
\                   , 'vale'
\                   , 'writegood'
\                   ]
