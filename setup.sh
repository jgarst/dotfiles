#! /usr/bin/env sh

doas pacman -S --needed --noconfirm fd shellcheck libpulse vim-gitgutter
pikaur --noedit --nodiff --needed --noconfirm -S chruby ruby-install
