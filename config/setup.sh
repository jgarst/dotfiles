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
)

aurs=(
    rbenv
    ruby-build
    zoom
    pass-git
    youtube-dl
)

doas pacman -S --needed "${packages[@]}"
pikaur --noedit --nodiff --needed -S "${aurs[@]}"

mandb

bat cache --build
