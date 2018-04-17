#
# ~/.bashrc
#

# shopt -q login_shell && exec sway || exec fish
if [[ $- == *i* ]]
then
    export XKB_DEFAULT_OPTIONS=caps:escape,
    shopt -q login_shell && sway
fi

export BASHRC="$XDG_CONFIG_HOME/.bashrc"
