" moving vimrc enables vi compatibility. Disable it here.
set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme and Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
colorscheme Tomorrow-Night-Bright


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filesystem
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't make backups
set nobackup
set nowritebackup

" Persistent undo
set undofile
set undodir=$XDG_CACHE_HOME/vim/undo

" Do not use swap files
set noswapfile


function! DiskReload()
    " Reload the buffer in this window if the file has been updated

    let wintype = getcmdwintype()

    if wintype == ':'
        " The cmdwindow mode disables commands that edit other buffers.
        " To get around this, we force vim to leave the cmdwindow, reload
        " everything, then restart the cmdwindow at the same position
        "
        " This is a hack that probably doesn't work very well.

        let g:CmdWindowLineMark=line(".")
        call feedkeys(":q\<cr>")
        call feedkeys(":checktime\<cr>")
        call feedkeys("q::execute \"normal \".g:CmdWindowLineMark.\"G\"\<cr>")
        call feedkeys(":\<cr>")
    elseif wintype == "/"
        let g:CmdWindowLineMark=line(".")
        call feedkeys(":q\<cr>")
        call feedkeys(":checktime\<cr>")
        call feedkeys("q/:execute \"normal \".g:CmdWindowLineMark.\"G\"\<cr>")
        call feedkeys(":\<cr>")
    elseif wintype == "?"
        let g:CmdWindowLineMark=line(".")
        call feedkeys(":q\<cr>")
        call feedkeys(":checktime\<cr>")
        call feedkeys("q?:execute \"normal \".g:CmdWindowLineMark.\"G\"\<cr>")
        call feedkeys(":\<cr>")
    else
        checktime
    endif
endfunction

set autoread
" bugged
" au BufEnter,FocusGained * call DiskReload()
autocmd FileChangedShellPost * 
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4


" disable modelines, for absolute control
set nomodeline

" line numbers
set relativenumber
set number

" Status Line
set laststatus=2
set statusline=%<                    " truncate at beginning
set statusline+=%f                   " filename
set statusline+=\ (%{&ft})           " filetype
set statusline+=\ %-4(%m%)           " modified status, padded to 4 on the left
set statusline+=%=                   " right justify after splitter
set statusline+=%-19(%3l,%02c%03V%)  " line number, row, row with expanded tabs


" syntax highlighting
filetype plugin on
syntax on

" hardcode odd file extensions
autocmd BufNewFile,BufRead *.zshenv set syntax=zsh
autocmd BufNewFile,BufRead *.zshrc set syntax=zsh

" search settings
set showmatch  " live match highlighting
set hlsearch  " highlight searches

" tab, trailing white space, non breaking space, end of line, line continuation
set list listchars=tab:│\ ,trail:·,nbsp:·,eol:¬,precedes:«,extends:»

" smart line breaking
set linebreak

" spell checking
set spell

" do not spell check words that are all capitals
syn match AcronymNoSpell '\<\(\u\|\d\)\{2,}s\?\>' contains=@NoSpell

" do not complain about lower case in git commits
autocmd FileType gitcommit setlocal spellcapcheck=

" have yanking use system clipboard
set clipboard=unnamedplus


function! RestoreCursor()
    " The `"` mark stores the last position in the current file.
    " This could probably be replaced with :mkview and :loadview, and be a
    " little more robust.

    if line("'\"") > 0 && line("'\"") <= line("$")
        exe "normal! g`\""
        return 1
    endif
endfunction

" save position in file
augroup resCur
    autocmd!
    autocmd BufWinEnter * call RestoreCursor()
augroup END
" Netrw supports reading and writing across networks. Disable it.
let g:netrw_dirhistmax = 0

" bind Ctrl-j and Ctrl-k to previous and next error
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ALE sign gutter popping in and out is too much movement
let g:ale_sign_column_always = 1

" do not complain about missing stub files
let g:ale_python_mypy_options = '--ignore-missing-imports'

let g:ale_fixers = {
    \ 'sql': ['pgformatter'],
    \ }

let g:ale_sql_pgformatter_options = '-w 80'

" Use bash for shell commands
set shell=/usr/bin/bash
let $BASH_ENV = "$XDG_CONFIG_HOME/bash_aliases"

" w!! overwrites write protected file
command W execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" textwidth of 72 for mutt emails
au BufRead /tmp/mutt-* set tw=72

set secure
