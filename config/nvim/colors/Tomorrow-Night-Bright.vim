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


" =============================================================================
" Text:
"   Groups defining color for text within the main editor screen.
" =============================================================================
hi Normal      guifg=#eaeaea guibg=#000000|     " Normal text
hi NonText     gui=bold guifg=#424242|          " Inline context symbols
hi SpecialKey  guifg=#424242|                   " Unprintable characters

hi Cursor      guifg=bg guibg=fg|               " Character under cursor

hi Conceal     guifg=LightGrey guibg=DarkGrey|  " Used for visual substitutions
" For examples of the Conceal group, see
"   https://alok.github.io/2018/04/26/using-vim-s-conceal-to-make-languages-more-tolerable/


" =============================================================================
" UI:
"   Groups defining color for separators and decorations.
" =============================================================================
hi ColorColumn   guibg=#2a2a2a|                 " Character ruler

hi StatusLine    gui=reverse guifg=#4d5057 guibg=#e7c547|  " Current status
hi StatusLineNC  gui=reverse guifg=#4d5057 guibg=#eaeaea|  " Other windows

hi VertSplit     guifg=#4d5057 guibg=#4d5057|   " Vertical window separator


" =============================================================================
" Gutters:
"   Groups defining color for annotations along the left side of the window.
" =============================================================================
hi CursorLineNr  gui=bold guifg=Yellow|        " Current line number
hi LineNr        guifg=#424242|                " Other line numbers

hi FoldColumn    guifg=Cyan guibg=#000000|     " `foldcolumn` activated gutter

hi SignColumn    guifg=Cyan guibg=#000000|     " Version control changes


" =============================================================================
" Standard:
"   Groups defining color for a generic language, as described by
"   `help group-name`.
"   The first example from each paragraph is the 'preferred group', that serves
"   as the default color for other groups inside the same paragraph.
" =============================================================================
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


" =============================================================================
" Highlighting:
"   Groups for selections, highlights and other dynamic parts of the text.
" =============================================================================
hi CursorLine    guibg=#2a2a2a|                " Color for the cursor line
hi CursorColumn  guibg=#2a2a2a|                " Color for the cursor column

hi Title         gui=bold guifg=#969896|       " Titles in syntax and commands

hi Search        guifg=#000000 guibg=#e7c547|  " The last search pattern
hi IncSearch     gui=reverse|                  " The search as it is typed

hi MatchParen    guibg=#424242|        " Match for the bracket under the cursor

hi DiffDelete    gui=bold guifg=#000000 guibg=#d54e53|  " Removed lines
hi DiffChange    guibg=#2B5B77|                         " Modified lines
hi DiffText      gui=bold guifg=#2a2a2a guibg=#7aa6da|  " Changes within line
hi DiffAdd       guibg=#4c4e39|                         " Added lines

hi Folded        guifg=#969896 guibg=#000000|  " Line denoting folded text

hi Visual        guibg=#424242|                " Visual mode selection
" VisualNOS is a specific X11 integration that nvim doesn't support
"   see neovim commit f48c8d652ce93091a0ba0cb38c353ebb991e0700

hi Directory     guifg=#7aa6da|       " Listed items that pop, like directories

" =============================================================================
" Tabs:
"   Tabs are distinct collections of vim windows.
"   They have a lot of functional overlap with a tiling window manager.
" =============================================================================
hi TabLineFill   gui=reverse guifg=#4d5057 guibg=#eaeaea|  " Tabs background
hi TabLineSel    gui=bold|                                 " Current tab
hi TabLine       gui=reverse guifg=#4d5057 guibg=#eaeaea|  " Non active tabs


" =============================================================================
" Spelling:
"   Groups describing the spell checker.
" =============================================================================
hi SpellBad      gui=undercurl guisp=Red|      " Unrecognized words
hi SpellCap      gui=undercurl guisp=Blue|     " Uncapitalized words
hi SpellRare     gui=undercurl guisp=Magenta|  " Unlikely words
hi SpellLocal    gui=undercurl guisp=Cyan|     " Words from another region


" =============================================================================
" Messages:
"   Groups describing messages on the command line.
" =============================================================================
hi ModeMsg     gui=bold guifg=#b9ca4a|  " `showmode` message.  '-- INSERT --'
hi MoreMsg     gui=bold guifg=#b9ca4a|  " More prompt. '-- More --'
hi WarningMsg  guifg=#d54e53|           " Warning messages
hi ErrorMsg    guifg=White guibg=Red|   " Error Messages
hi Question    gui=bold guifg=#b9ca4a|  " 'Press enter' and question prompts


" =============================================================================
" Menus:
"   Groups describing UI that pops onto the screen
" =============================================================================

hi Pmenu         guifg=#eaeaea guibg=#424242
hi PmenuSel      gui=reverse guifg=#eaeaea guibg=#424242
hi PmenuSbar     guibg=Grey
hi PmenuThumb    guibg=White

hi WildMenu      guifg=Black guibg=Yellow


" =============================================================================
" Vim:
" =============================================================================
hi vimCommand                     guifg=#d54e53  gui=none


" =============================================================================
" C:
" =============================================================================
hi cType                          guifg=#e7c547
hi cStorageClass                  guifg=#c397d8
hi cConditional                   guifg=#c397d8
hi cRepeat                        guifg=#c397d8


" =============================================================================
" PHP:
" =============================================================================
hi phpVarSelector                 guifg=#d54e53
hi phpKeyword                     guifg=#c397d8
hi phpRepeat                      guifg=#c397d8
hi phpConditional                 guifg=#c397d8
hi phpStatement                   guifg=#c397d8
hi phpMemberSelector              guifg=#eaeaea


" =============================================================================
" Ruby:
" =============================================================================
hi rubySymbol                     guifg=#b9ca4a
hi rubyConstant                   guifg=#e7c547
hi rubyAccess                     guifg=#e7c547
hi rubyAttribute                  guifg=#7aa6da
hi rubyInclude                    guifg=#7aa6da
hi rubyLocalVariableOrMethod      guifg=#e78c45
hi rubyCurlyBlock                 guifg=#e78c45
hi rubyStringDelimiter            guifg=#b9ca4a
hi rubyInterpolationDelimiter     guifg=#e78c45
hi rubyConditional                guifg=#c397d8
hi rubyRepeat                     guifg=#c397d8
hi rubyControl                    guifg=#c397d8
hi rubyException                  guifg=#c397d8


" =============================================================================
" Crystal:
" =============================================================================
hi crystalSymbol                  guifg=#b9ca4a
hi crystalConstant                guifg=#e7c547
hi crystalAccess                  guifg=#e7c547
hi crystalAttribute               guifg=#7aa6da
hi crystalInclude                 guifg=#7aa6da
hi crystalLocalVariableOrMethod   guifg=#e78c45
hi crystalCurlyBlock              guifg=#e78c45
hi crystalStringDelimiter         guifg=#b9ca4a
hi crystalInterpolationDelimiter  guifg=#e78c45
hi crystalConditional             guifg=#c397d8
hi crystalRepeat                  guifg=#c397d8
hi crystalControl                 guifg=#c397d8
hi crystalException               guifg=#c397d8


" =============================================================================
" Python:
" =============================================================================
hi pythonInclude                  guifg=#c397d8
hi pythonStatement                guifg=#c397d8
hi pythonConditional              guifg=#c397d8
hi pythonRepeat                   guifg=#c397d8
hi pythonException                guifg=#c397d8
hi pythonFunction                 guifg=#7aa6da
hi pythonPreCondit                guifg=#c397d8
hi pythonRepeat                   guifg=#70c0b1
hi pythonExClass                  guifg=#e78c45


" =============================================================================
" JavaScript:
" =============================================================================
hi javaScriptBraces               guifg=#eaeaea
hi javaScriptFunction             guifg=#c397d8
hi javaScriptConditional          guifg=#c397d8
hi javaScriptRepeat               guifg=#c397d8
hi javaScriptNumber               guifg=#e78c45
hi javaScriptMember               guifg=#e78c45
hi javascriptNull                 guifg=#e78c45
hi javascriptGlobal               guifg=#7aa6da
hi javascriptStatement            guifg=#d54e53


" =============================================================================
" CoffeeScript:
" =============================================================================
hi coffeeRepeat                   guifg=#c397d8
hi coffeeConditional              guifg=#c397d8
hi coffeeKeyword                  guifg=#c397d8
hi coffeeObject                   guifg=#e7c547


" =============================================================================
" HTML:
" =============================================================================
hi htmlTag                        guifg=#d54e53
hi htmlTagName                    guifg=#d54e53
hi htmlArg                        guifg=#d54e53
hi htmlScriptTag                  guifg=#d54e53


" =============================================================================
" Diff:
" =============================================================================
hi diffAdd                        guibg=#4c4e39
hi diffDelete                     guifg=#000000  guibg=#d54e53
hi diffChange                     guibg=#2B5B77
hi diffText                       guifg=#2a2a2a  guibg=#7aa6da


" =============================================================================
" ShowMarks:
" =============================================================================
hi ShowMarksHLl                   guifg=#e78c45  guibg=#000000  gui=none
hi ShowMarksHLo                   guifg=#c397d8  guibg=#000000  gui=none
hi ShowMarksHLu                   guifg=#e7c547  guibg=#000000  gui=none
hi ShowMarksHLm                   guifg=#70c0b1  guibg=#000000  gui=none


" =============================================================================
" Lua:
" =============================================================================
hi luaStatement                   guifg=#c397d8
hi luaRepeat                      guifg=#c397d8
hi luaCondStart                   guifg=#c397d8
hi luaCondElseif                  guifg=#c397d8
hi luaCond                        guifg=#c397d8
hi luaCondEnd                     guifg=#c397d8


" =============================================================================
" Cucumber:
" =============================================================================
hi cucumberGiven                  guifg=#7aa6da
hi cucumberGivenAnd               guifg=#7aa6da


" =============================================================================
" Go:
" =============================================================================
hi goDirective                    guifg=#c397d8
hi goDeclaration                  guifg=#c397d8
hi goStatement                    guifg=#c397d8
hi goConditional                  guifg=#c397d8
hi goConstants                    guifg=#e78c45
hi goTodo                         guifg=#e7c547
hi goDeclType                     guifg=#7aa6da
hi goBuiltins                     guifg=#c397d8
hi goRepeat                       guifg=#c397d8
hi goLabel                        guifg=#c397d8


" =============================================================================
" Clojure:
" =============================================================================
hi clojureConstant                guifg=#e78c45
hi clojureBoolean                 guifg=#e78c45
hi clojureCharacter               guifg=#e78c45
hi clojureKeyword                 guifg=#b9ca4a
hi clojureNumber                  guifg=#e78c45
hi clojureString                  guifg=#b9ca4a
hi clojureRegexp                  guifg=#b9ca4a
hi clojureParen                   guifg=#70c0b1
hi clojureVariable                guifg=#e7c547
hi clojureCond                    guifg=#7aa6da
hi clojureDefine                  guifg=#c397d8
hi clojureException               guifg=#d54e53
hi clojureFunc                    guifg=#7aa6da
hi clojureMacro                   guifg=#7aa6da
hi clojureRepeat                  guifg=#7aa6da
hi clojureSpecial                 guifg=#c397d8
hi clojureQuote                   guifg=#7aa6da
hi clojureUnquote                 guifg=#7aa6da
hi clojureMeta                    guifg=#7aa6da
hi clojureDeref                   guifg=#7aa6da
hi clojureAnonArg                 guifg=#7aa6da
hi clojureRepeat                  guifg=#7aa6da
hi clojureDispatch                guifg=#7aa6da


" =============================================================================
" Scala:
" =============================================================================
hi scalaKeyword                   guifg=#c397d8
hi scalaKeywordModifier           guifg=#c397d8
hi scalaOperator                  guifg=#7aa6da
hi scalaPackage                   guifg=#d54e53
hi scalaFqn                       guifg=#eaeaea
hi scalaFqnSet                    guifg=#eaeaea
hi scalaImport                    guifg=#c397d8
hi scalaBoolean                   guifg=#e78c45
hi scalaDef                       guifg=#c397d8
hi scalaVal                       guifg=#c397d8
hi scalaVar                       guifg=#70c0b1
hi scalaClass                     guifg=#c397d8
hi scalaObject                    guifg=#c397d8
hi scalaTrait                     guifg=#c397d8
hi scalaDefName                   guifg=#7aa6da
hi scalaValName                   guifg=#eaeaea
hi scalaVarName                   guifg=#eaeaea
hi scalaClassName                 guifg=#eaeaea
hi scalaType                      guifg=#e7c547
hi scalaTypeSpecializer           guifg=#e7c547
hi scalaAnnotation                guifg=#e78c45
hi scalaNumber                    guifg=#e78c45
hi scalaDefSpecializer            guifg=#e7c547
hi scalaClassSpecializer          guifg=#e7c547
hi scalaBackTick                  guifg=#b9ca4a
hi scalaRoot                      guifg=#eaeaea
hi scalaMethodCall                guifg=#7aa6da
hi scalaCaseType                  guifg=#e7c547
hi scalaLineComment               guifg=#969896
hi scalaComment                   guifg=#969896
hi scalaDocComment                guifg=#969896
hi scalaDocTags                   guifg=#969896
hi scalaEmptyString               guifg=#b9ca4a
hi scalaMultiLineString           guifg=#b9ca4a
hi scalaUnicode                   guifg=#e78c45
hi scalaString                    guifg=#b9ca4a
hi scalaStringEscape              guifg=#b9ca4a
hi scalaSymbol                    guifg=#e78c45
hi scalaChar                      guifg=#e78c45
hi scalaXml                       guifg=#b9ca4a
hi scalaConstructorSpecializer    guifg=#e7c547
hi scalaBackTick                  guifg=#7aa6da


" =============================================================================
" Git:
" =============================================================================
hi diffAdded                      guifg=#b9ca4a
hi diffRemoved                    guifg=#d54e53
hi gitcommitSummary               gui=bold
fun <SID>X(group, fg, bg, attr)
		if a:fg != ""
			exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
		endif
		if a:bg != ""
			exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
		endif
		if a:attr != ""
			exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
		endif
	endfun
