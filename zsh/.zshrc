bindkey -v
zstyle :compinstall filename '/home/jared/config/zsh/.zshrc'

# Initialize completion
autoload -Uz compinit
compinit

# path array contains unique paths
typeset -U PATH path

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/config/zsh/.p10k.zsh.
[[ ! -f ~/config/zsh/.p10k.zsh ]] || source ~/config/zsh/.p10k.zsh

export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

alias vim=nvim
alias vi=nvim
alias ls=exa

alias wget='wget --hsts-file=$XDG_DATA_HOME/wget-hsts'
##############################################################################
# Reminders for utilities
##############################################################################

img ()
{
    printf 'Try `imv`!\n'
}

video ()
{
    printf 'Try `mpv`!\n'
}


##############################################################################
# Nudge to use hipster rust utilities
##############################################################################

du ()
{
    if [ -t 1 ]
    then
        >&2 echo 'Try using `dua`!'
        dua "$@"
    else
        du "$@"
    fi
}

cat ()
{
    if [ -t 1 ]
    then
        >&2 echo 'Try using `bat`!'
        bat "$@"
    else
        cat "$@"
    fi
}

find ()
{
    if [ -t 1 ]
    then
        >&2 echo 'Try using `fd`!'
        fd "$@"
    else
        find "$@"
    fi
}

 sed ()
 {
    if [ -t 1 ]
    then
        >&2 echo 'Try using `sd`!'
        sd "$@"
    else
        sed "$@"
    fi
}

top ()
# 2020-03-08
# htop seems unmaintained with one person committing, one alpha4 release in
# 2018 and nothing after that.  It is also easier to read than top, and has nice
# IO monitoring.
#
# replacements (ytop) look undercooked
{
    if [ -t 1 ]
    then
        >&2 echo 'Try using `htop`!'
        htop "$@"
    else
        top "$@"
    fi
}

###############################################################################
# chruby

source /usr/share/chruby/chruby.sh

# find rubies installed in XDG directories

if [ -d "${XDG_DATA_HOME}/rubies" ]
then
    RUBIES+=("${(@f)$(fd '.*' ${XDG_DATA_HOME}/rubies --type directory)}")
fi
