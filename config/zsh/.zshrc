# execute machine specific initialization
localrc="${ZDOTDIR}/`/usr/bin/hostname`.zshrc"
if [ -f "${localrc}" ]
then
    source "${localrc}"
fi


bindkey -v
zstyle :compinstall filename '/home/jared/config/zsh/.zshrc'

# Initialize completion
autoload -Uz compinit
compinit

# path array contains unique paths
typeset -U PATH path

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/config/zsh/p10k.zsh.
[[ ! -f ~/config/zsh/p10k.zsh ]] || source ~/config/zsh/p10k.zsh

alias ls=exa
alias cat=bat


###############################################################################
# initialize rbenv
#

eval "$(rbenv init -)"


###############################################################################
# command line nudges
#
# These utilities are functions so that they can communicate in the terminal,
# but aren't exported to subprocesses


function video
# a remember of which tool is used for playing video
{
    >&2 printf 'Try \033[1mmpv\033[0m!\n'
}

function du
# a nudge to use a cooler utility
{
    >&2 printf 'Try using \033[1mdua]033m!\n'
}

function top
{
    # 2020-03-08
    # htop is easier to read, and has nice IO monitoring.
    # It also seems undermaintained, with one person committing, and one alpha
    # release in 2018.  Replacements (ytop) look undercooked.
    >&2 printf 'Try using \033[1mhtop\033[0m!\n'
}


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
