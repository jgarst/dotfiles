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


function sed
# a nudge to use a cooler utility
{
    >&2 printf 'Try using \033[1msd\033[0m!\n'
}


function du
# a nudge to use a cooler utility
{
    >&2 printf 'Try using \033[1mdua]033m!\n'
}


function find
# a nudge to use a cooler utility
{
    >&2 printf 'Try using \033[1mfd\033[0m!'
}


function top
{
    # 2020-03-08
    # htop is easier to read, and has nice IO monitoring.
    # It also seems undermaintained, with one person committing, and one alpha
    # release in 2018.  Replacements (ytop) look undercooked.
    >&2 printf 'Try using \033[1mhtop\033[0m!\n'
}


function jira-environment
{
    local env_file="${XDG_DATA_HOME}/jira/creds.gpg"
    $(gpg --use-agent --no-tty --quiet -o - "${env_file}")
}
