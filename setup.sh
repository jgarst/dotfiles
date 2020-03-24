#! /usr/bin/env sh

doas pacman -S --needed --noconfirm fd shellcheck libpulse vim-gitgutter sd bat
pikaur --noedit --nodiff --needed --noconfirm -S chruby-git ruby-install zoom

mandb

bat cache --build
