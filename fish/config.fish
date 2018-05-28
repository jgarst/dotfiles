# default XDG variables

set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_DIRS /usr/local/share/:/usr/share
set -gx XDG_CONFIG_DIRS /etc/xdg
set -gx XDG_CACHE_HOME $HOME/.cache

# personal scripts
set -gx PATH $XDG_CONFIG_HOME/bin $PATH

set -x PYTHONSTARTUP $XDG_CONFIG_HOME/python/python-startup.py
set -x IPYTHONDIR $XDG_CONFIG_HOME/ipython
set -x PASSWORD_STORE_DIR $HOME/pass

set -x EDITOR "vim"
set -gx VIMINIT 'let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# path to virsh machine
set -x LIBVIRT_DEFAULT_URI qemu:///system

alias ffplay "ffplay -loglevel panic"
alias print "lpr"
alias ctags "ctags --options=$XDG_CONFIG_HOME/ctags"

alias tmux "tmux -f $XDG_CONFIG_HOME/tmux.conf"

# go path
set -x GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
