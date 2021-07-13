# execute machine specific initialization
localrc="${ZDOTDIR}/`/usr/bin/hostname`.zshrc"
if [ -f "${localrc}" ]
then
    source "${localrc}"
fi

# use emacs line editing mode; I don't need to complexity of vim here and
# accidentally hitting escape is annoying.
bindkey -e
zstyle :compinstall filename '/home/jared/config/zsh/.zshrc'

# Initialize completion
autoload -Uz compinit
compinit

# path array contains unique paths
typeset -U PATH path

# require >! to clobber files
set -o noclobber

eval "$(starship init zsh)"


###############################################################################
# initialize rbenv
#

eval "$(rbenv init -)"


###############################################################################
# initialize atuin
#

export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

bindkey '^r' _atuin_search_widget


###############################################################################
# Aliases
#

# For some utilities, I would like to use a command named after what it does.
# This allows me to change the utility later without requiring me to update my
# muscle memory.
alias video='mpv'
alias browser='firefox'
alias du='dust'
alias top='htop'
alias cat='bat'
alias ls='exa'
alias locate='plocate'
alias diff='delta'

# pyr (python-repl) is an alias that lets me access a preferred python repl
# without shadowing the python command.
alias pyr='ptpython'

# I want to modify some commands, but only when they are called from an
# interactive shell.
#
# For example, when I use cp I always want the -i flag to prevent accidental
# overwrites.
# I do not want to change the behavior of cp when it is used in scripts.
alias cp='cp -i'
alias mv='mv -i'
alias tsc='tsc --strict \
    --noImplicitReturns \
    --noFallthroughCasesInSwitch \
    --noUnusedLocals'
alias rclone='rclone --dropbox-token "$(pass rclone/dropbox)"\
    --progress \
    --progress-terminal-title'

# Nudges
# For some commands, I would like to remind myself to use a different command.
# The actual commands are still available through /usr/bin/<command>
# Ideally, these reminders will eventually be removed.
alias firefox='echo "use the browser command!"'


# From gary bernheardt's dotfiles
# https://github.com/garybernhardt/dotfiles

# By default, ^S freezes terminal output and ^Q resumes it.  Disable that so
# that those keys can be used for other things
unsetopt flowcontrol
# Run `hs` in the current working directory, appending the selected path,
# if any, to the current command.
function insert-hs-path-in-command-line()
{
    local selected_path
    # print a newline or we'll clobber the old prompt.
    echo
    # Find the path
    selected_path=$(fd -HI '.*' --type file --type directory | hs) || return
    # only continue if I selected something
    if [ -n "$selected_path" ]
    then
        # Escape the path, since I am inserting it into the command line.
        # E.g. spaces would cause it to be multiple arguments 
        # instead of a single path argument.
        selected_path=$(printf '%q' "$selected_path")
        # Append the selection to the current command buffer.
        eval 'LBUFFER="$LBUFFER$selected_path "'
        # Redraw the prompt since `hs` has drawn several new lines of text.
    fi

    zle reset-prompt
}
# Create the zle widget
zle -N insert-hs-path-in-command-line
# Bind the key to the newly created widget
bindkey "^S" "insert-hs-path-in-command-line"


###############################################################################
# set terminal title to the current working directory
###############################################################################

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn -- '\e]2; %~\a'
}

function xterm_title_preexec () {
    print -Pn -- '\e]2; %~ %# ' && print -n -- "${(q)1}\a"
}

if [[ "$TERM" == (alacritty*|gnome*|konsole*|putty*|rxvt*|screen*|tmux*|xterm*) ]]
then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi


# Use menu for autocompletion
zstyle ':completion:*' menu select
