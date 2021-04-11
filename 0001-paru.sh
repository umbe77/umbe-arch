#!/usr/bin/env bash

echo "Installing paru"
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
