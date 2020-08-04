#! /usr/bin/env bash

packages=(
    base
    linux
    linux-firmware
    neovim
    git
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
    pass
    brightnessctl
)

sound=(
    alsa-utils
    pulseaudio
    pavucontrol
)

wayland=(
    grim
    slurp
    wl-clipboard
)

aurs=(
    rbenv
    ruby-build
    zoom
    youtube-dl
    dmenu-height
)

doas pacman -S --needed "${packages[@]}" "${sound[@]}"
# pikaur --noedit --nodiff --needed -S "${aurs[@]}"

mandb

bat cache --build
