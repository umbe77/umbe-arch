#!/usr/bin/env bash

aur_install() {
    if yay -Qi $1 &> /dev/null; then
        echo "Package "$1" just installed"
    else
        echo "Installing package "$1""
        yay -S --noconfirm --needed $1
    fi
}

list=(
insomnia
lazydocker
lazygit
pfetch
teams
typora
docker-compose
)

for name in "${list[@]}" ; do
    aur_install $name
done

