if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    case "$(hostname)" in
        "boneset")
            xinit "${XDG_CONFIG_HOME}"/X11/xinitrc.boneset -- vt1
        ;;

        "iris")
            xinit "${XDG_CONFIG_HOME}"/X11/xinitrc.iris -- vt1
        ;;

        "dandelion")
            xinit "${XDG_CONFIG_HOME}"/X11/xinitrc -- vt1
        ;;
    esac
fi
