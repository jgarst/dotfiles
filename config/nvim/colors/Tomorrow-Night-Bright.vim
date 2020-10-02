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
" code indulges in the hack of including them by ending commands with a `|` character.
" The `|` character starts a new command, which will only contain the comment.


set background=dark
hi clear
syntax reset
let g:colors_name = "Tomorrow-Night-Bright"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Standard syntax groups referenced in group-name                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" groups that typically define the syntax highlighting
" The first example from each paragraph is the 'preferred group', that serves
" as the default color for other groups inside the same paragraph.

hi Comment       guifg=#969896|                " any comment

hi Constant      guifg=#e78c45|                " any constant
hi String        guifg=#b9ca4a|                " a string constant. \"this is a string\"
" hi Character                                   a character constant. 'c', '\n'
" hi Number                                      a number constant. 234, 0xff
" hi Boolean                                     a boolean constant.  TRUE, false
" hi Float                                       a floating point constant. 2.3e10

hi Identifier    guifg=#d54e53|                " any variable name
hi Function      guifg=#7aa6da|                " function or method name

hi Statement     gui=bold guifg=#eaeaea|       " any statement
hi Conditional   guifg=#eaeaea|                " if, then else, endif, switch, ...
hi Repeat        guifg=#eaeaea|                " for, do, while, ...
" hi Label                                       case, default, ...
hi Operator      guifg=#70c0b1|                " `sizeof`, `+`, `*`, ...
hi Keyword       guifg=#e78c45|                " any other keyword
" hi Exception                                   try, catch, throw, ...

hi PreProc       guifg=#c397d8|                " generic Preprocessor
hi Include       guifg=#7aa6da|                " preprocessor `#include`
hi Define        guifg=#c397d8|                " preprocessor `#define`
" hi Macro                                       same as Define (???)
" hi PreCondit                                   preprocessor #if, #else, #endif, ...

hi Type          guifg=#7aa6da|                " int, long, char, ...
" hi StorageClass                                static, register, volatile, ...
hi Structure     guifg=#c397d8|                " struct, union, enum, ...
" hi Typedef                                     a typedef (???)

hi Special       guifg=#eaeaea|                " any special symbol
" hi SpecialChar                                 special character in a constant
" hi Tag                                         can use CTRL-] on this
" hi Delimiter                                   character that needs attention (???)
" hi SpecialComment                              special things inside a comment (???)
" hi Debug                                       debugging statements

hi Underlined    gui=underline guifg=#80a0ff|  " text that stands out, HTML links

hi Ignore        guifg=bg|                     " left blank, hidden, consider using conceal

hi Error         guifg=White guibg=Red|        " any erroneous construct

hi Todo          guifg=#969896 guibg=#000000|  " mostly the keywords TODO FIXME and XXX

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
