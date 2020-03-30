#! /usr/bin/env bash

packages=(
    fd
    shellcheck
    libpulse
    neovim
    vim-gitgutter
    sd
    bat
)

aurs=(
    rbenv
    ruby-build
    zoom
    pass-git
)

doas pacman -S --needed "${packages[@]}"
pikaur --noedit --nodiff --needed -S "${aurs[@]}"

mandb

bat cache --build