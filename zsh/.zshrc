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

export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

alias vim=nvim
alias vi=nvim
alias ls=exa


###############################################################################
# chruby

source /usr/share/chruby/chruby.sh

# find rubies installed in XDG directories
if [ -d "${XDG_DATA_HOME}/rubies" ]
then
    RUBIES+=(${XDG_DATA_HOME}/rubies/*/)
fi
