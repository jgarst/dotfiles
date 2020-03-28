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
    chruby-git
    ruby-install
    zoom
    pass-git
)

doas pacman -S --needed "${packages[@]}"
pikaur --noedit --nodiff --needed -S "${aurs[@]}"

mandb

bat cache --build
