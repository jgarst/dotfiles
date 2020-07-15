#! /usr/bin/env bash

packages=(
    fd
    shellcheck
    libpulse
    neovim
    vim-gitgutter
    sd
    bat
    inetutils
    grim
    slurp
    imv
    wl-clipboard
    xdg-utils
    pavucontrol
    connman
    pass
)

aurs=(
    rbenv
    ruby-build
    zoom
    youtube-dl
)

doas pacman -S --needed "${packages[@]}"
doas pacman -R "netctl"
pikaur --noedit --nodiff --needed -S "${aurs[@]}"

mandb

bat cache --build
