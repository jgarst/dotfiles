#! /usr/bin/env sh

doas pacman -S --needed --noconfirm fd shellcheck libpulse vim-gitgutter sd
pikaur --noedit --nodiff --needed --noconfirm -S chruby ruby-install
