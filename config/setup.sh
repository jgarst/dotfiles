#! /usr/bin/env bash

packages=(
    base
    base-devel
    linux
    linux-firmware
    udisks2
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

doas pikaur -S --needed "${packages[@]}" "${sound[@]}" "${x11[@]}"

mandb

bat cache --build

mkdir "${XDG_CONFIG_HOME}"/rclone
pass rclone_conf > "${XDG_CONFIG_HOME}"/rclone
