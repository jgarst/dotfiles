" A precomputed version of the tomorrow night bright colorscheme.

" The version of the colorscheme available through the standard repo
" https://github.com/ChrisKempson/Tomorrow-Theme
" takes a noticable amount of time to load.  This is the same colorscheme
" commented and expressed as a series of literal `highlight` commands.

" vim coloration starts by tagging 'chunks' of text with a conventional
" highlighting group, like Keyword, using the `syntax` command.  This file
" defines specific colors for those groups.

" `hl-<group>`
" A description of most of these groups can be found with the `hl-<group>`
" help tag.  Groups for which this is not true are in sections that have
" header comments referencing documentation.

" `map-comments`
" While the highlight command normally does not support inline comments, this
" code includes them by ending commands with a `|` character, starting a new
" command containing only the comment.  This is an indulgent hack and I refuse
" to apologize.


set background=dark
hi clear
syntax reset
let g:colors_name = "Tomorrow-Night-Bright"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text and UI colors                                                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" groups that define the colors on the main editor screen

hi Normal      guifg=#eaeaea guibg=#000000|     " Normal text
hi NonText     gui=bold guifg=#424242|          " Inline context symbols
hi SpecialKey  guifg=#424242|                   " Unprintable characters

hi Cursor      guifg=bg guibg=fg|               " Character under cursor

hi Conceal     guifg=LightGrey guibg=DarkGrey|  " Used for visual substitutions
" For examples of the Conceal group, see
"   https://alok.github.io/2018/04/26/using-vim-s-conceal-to-make-languages-more-tolerable/

hi ColorColumn   guibg=#2a2a2a|                 " Character ruler

hi StatusLine    gui=reverse guifg=#4d5057 guibg=#e7c547|  " Current status
hi StatusLineNC  gui=reverse guifg=#4d5057 guibg=#eaeaea|  " Other windows


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutters                                                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Groups that color the annotation of lines on the left hand side of windows.

hi CursorLineNr  gui=bold guifg=Yellow|        " Current line number
hi LineNr        guifg=#424242|                " Other line numbers

hi FoldColumn    guifg=Cyan guibg=#000000|     " `foldcolumn` activated gutter

hi SignColumn    guifg=Cyan guibg=#000000|     " Version control changes


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Standard syntax groups referenced in `group-name`                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Groups that typically define the syntax highlighting.
" The first example from each paragraph is the 'preferred group', that serves
" as the default color for other groups inside the same paragraph.

hi Comment       guifg=#969896|                " Any comment

hi Constant      guifg=#e78c45|                " Any constant
hi String        guifg=#b9ca4a|                " \"this is a string\"
" hi Character                                   'c', '\n'
" hi Number                                      234, 0xff
" hi Boolean                                     TRUE, false
" hi Float                                       2.3e10

hi Identifier    guifg=#d54e53|                " Any variable name
hi Function      guifg=#7aa6da|                " Function or method name

hi Statement     gui=bold guifg=#eaeaea|       " Any statement
hi Conditional   guifg=#eaeaea|                " if, then, else, switch, ...
hi Repeat        guifg=#eaeaea|                " for, do, while, ...
" hi Label                                       case, default, ...
hi Operator      guifg=#70c0b1|                " `sizeof`, `+`, `*`, ...
hi Keyword       guifg=#e78c45|                " Any other keyword
" hi Exception                                   try, catch, throw, ...

hi PreProc       guifg=#c397d8|                " Generic Preprocessor
hi Include       guifg=#7aa6da|                " Preprocessor `#include`
hi Define        guifg=#c397d8|                " Preprocessor `#define`
"    For example a rust macro variable or python decorator
" hi Macro                                       Same as Define
"    For example a macro in c, rust or other literal substitutions
" hi PreCondit                                   Preprocessor #if, #else, ...

hi Type          guifg=#7aa6da|                " int, long, char, ...
" hi StorageClass                                static, register, ...
hi Structure     guifg=#c397d8|                " struct, union, enum, ...
" hi Typedef                                     A new type

hi Special       guifg=#eaeaea|                " Any special symbol.
"    For example a Python charcter escape sequence. \n, \t, \b, \ooo, \xhh, ...
" hi SpecialChar                                 Special symbol in a constant
"    zsh uses Special for job_specs and SpecialChar for escape sequences
" hi Tag                                         Can use CTRL-] on this
" hi Delimiter                                   Character that needs attention
" hi SpecialComment                              Distinctive comment parts.
"    For example a `/** Java comment title`
" hi Debug                                       Debugging statements

hi Underlined    gui=underline guifg=#80a0ff|  " For example HTML links

hi Ignore        guifg=bg|                     " Similar to Conceal group

hi Error         guifg=White guibg=Red|        " Any erroneous construct

hi Todo          guifg=#969896 guibg=#000000|  " TODO, FIXME, and XXX


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Highlighting                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Groups describing selections, highlights and other dynamic parts of the text.

hi CursorLine    guibg=#2a2a2a|                " Color for the cursor line
hi CursorColumn  guibg=#2a2a2a|                " Color for the cursor column

hi Title         gui=bold guifg=#969896|       " Titles in syntax and commands

hi Search        guifg=#000000 guibg=#e7c547|  " The last search pattern
hi IncSearch     gui=reverse|                  " The search as it is typed

hi MatchParen    guibg=#424242|                " Match for the bracket under the cursor

hi DiffDelete    gui=bold guifg=#000000 guibg=#d54e53|  " Removed lines in diff
hi DiffChange    guibg=#2B5B77|                         " Modified lines in diff
hi DiffText      gui=bold guifg=#2a2a2a guibg=#7aa6da|  " Changes within line
hi DiffAdd       guibg=#4c4e39|                         " Added lines in diff

hi Folded        guifg=#969896 guibg=#000000|  " Line denoting folded text

hi Visual        guibg=#424242|                " Visual mode selection
" VisualNOS is a specific X11 integration that nvim doesn't support
"   see neovim commit f48c8d652ce93091a0ba0cb38c353ebb991e0700


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs                                                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs are distinct collections of vim windows.  They have a lot of functional
" overlap with a tiling window manager.

hi TabLineFill   gui=reverse guifg=#4d5057 guibg=#eaeaea|  " Tabs background
hi TabLineSel    gui=bold|                                 " Current tab
hi TabLine       gui=reverse guifg=#4d5057 guibg=#eaeaea|  " Non active tabs


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spelling Highlighters                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Groups describing the spell checker.

hi SpellBad      gui=undercurl guisp=Red|      " Words which are not recognized
hi SpellCap      gui=undercurl guisp=Blue|     " Words which should be capitalized
hi SpellRare     gui=undercurl guisp=Magenta|  " Words which are unlikely
hi SpellLocal    gui=undercurl guisp=Cyan|     " Words from another region


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Messages                                                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Groups describing messages on the command line.

hi ModeMsg     gui=bold guifg=#b9ca4a|  " `showmode` message.  '-- INSERT --'
hi MoreMsg     gui=bold guifg=#b9ca4a|  " More prompt. '-- More --'
hi WarningMsg  guifg=#d54e53|           " Warning messages
hi ErrorMsg    guifg=White guibg=Red|   " Error Messages
hi Question    gui=bold guifg=#b9ca4a|   " 'Press enter' and question prompts


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menus, windows, terminals and filesystem text                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi Pmenu         guifg=#eaeaea guibg=#424242
hi PmenuSel      gui=reverse guifg=#eaeaea guibg=#424242
hi PmenuSbar     guibg=Grey
hi PmenuThumb    guibg=White

hi WildMenu      guifg=Black guibg=Yellow

" hl-Directory: Directory names
hi Directory     guifg=#7aa6da

hi TermCursor      gui=reverse

" The column separating vertically split windows
hi VertSplit     guifg=#4d5057 guibg=#4d5057


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi RedrawDebugNormal  gui=reverse
hi RedrawDebugClear  guibg=Yellow
hi RedrawDebugComposed  guibg=Green
hi RedrawDebugRecompose  guibg=Red
hi lCursor         guifg=bg guibg=fg
hi NvimInternalError  guifg=Red guibg=Red

" show
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
