if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    case "$(hostname)" in
        "boneset")
            xinit "${XDG_CONFIG_HOME}"/X11/xinitrc -- \
                -xf86config "${XDG_CONFIG_HOME}"/X11/xorg.conf \
                vt1
        ;;

        "iris")
            startx
        ;;

        "dandelion")
            startx
        ;;
    esac
fi
