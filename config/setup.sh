#! /usr/bin/env bash

make -C packages jared.db
doas pacman -Scc
doas pacman -Syy


packages=(
    base
    base-devel
    linux
    linux-firmware
    udisks2
    xterm
    neovim
    git
    git-lfs
    inetutils
    connman
    iwd
    fd
    shellcheck
    vim-gitgutter
    sd
    bat
    imv
    xdg-utils
    i3-wm
    i3status
    bemenu
    bemenu-x11
    pass
    brightnessctl
    bolt
)
# rclone?

sound=(
    alsa-utils
    pulseaudio
    pavucontrol
)

ios=(
    libimobiledevice
    ifuse
)

x11=(
    feh
)

wayland=(
    grim
    slurp
    wl-clipboard
)

aurs=(
    zoom
    youtube-dl
)

jared=(
    jared-xdg-vars
)

doas pikaur -S --needed "${packages[@]}" "${sound[@]}" "${x11[@]}" 
doas pacman -S --needed "${jared[@]}"

mandb

bat cache --build

mkdir "${XDG_CONFIG_HOME}"/rclone
pass rclone_conf > "${XDG_CONFIG_HOME}"/rclone
