# default XDG variables

# personal scripts
set -gx PATH $XDG_CONFIG_HOME/bin $PATH

set -gx VIMINIT 'let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# path to virsh machine
set -x LIBVIRT_DEFAULT_URI qemu:///system

alias ffplay "ffplay -loglevel panic"
alias print "lpr"
alias ctags "ctags --options=$XDG_CONFIG_HOME/ctags"

alias tmux "tmux -f $XDG_CONFIG_HOME/tmux.conf"
alias vim "nvim"

# go path
set -gx PATH $GOPATH/bin $PATH

function neomutt
    bash --login -c 'cd; /usr/bin/neomutt' $argv;
end

alias mutt="neomutt"

# Shift-enter completes the fish suggestion
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \e\[13\;2u accept-autosuggestion execute
    end
end

# Use conda 
# set -gx PATH /opt/miniconda3/bin/ $PATH
# source /opt/miniconda3/etc/fish/conf.d/conda.fish
# conda activate root
