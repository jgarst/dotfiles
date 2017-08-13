# default XDG variables

set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_DIRS /usr/local/share/:/usr/share
set -gx XDG_CONFIG_DIRS /etc/xdg
set -gx XDG_CACHE_HOME $HOME/.cache

set -x PYTHONSTARTUP ~/.config/python/python-startup.py
set -x IPYTHONDIR ~/.config/ipython
set -x PASSWORD_STORE_DIR /home/jared/.config/pass

set -x EDITOR "vim"
set -gx VIMINIT 'let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

set -gx PATH ~/bin ~/.local/bin $PATH

# path to virsh machine
set -x LIBVIRT_DEFAULT_URI qemu:///system

alias ffplay "ffplay -loglevel panic"

# go path
set -x GOPATH $HOME
