#! /usr/bin/env sh

doas pacman -S --needed --noconfirm fd shellcheck libpulse vim-gitgutter sd bat neovim
pikaur --noedit --nodiff --needed --noconfirm -S chruby-git ruby-install zoom pass-git

mandb

bat cache --build
