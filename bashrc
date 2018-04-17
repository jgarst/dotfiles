shopt -s expand_aliases

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS="/usr/local/share/:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_CACHE_HOME="$HOME/.cache"

export PASSWORD_STORE_DIR="$XDG_CONFIG_HOME/pass"

alias ctags="ctags --options=$XDG_CONFIG_HOME/ctags"
