#! /usr/bin/env sh

sudo pacman -S --needed --noconfirm fd shellcheck libpulse
pikaur --noedit --nodiff --needed --noconfirm -S chruby ruby-install
