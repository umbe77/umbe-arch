#!/usr/bin/env bash

u_install() {
    if sudo pacman -Qi $1 &> /dev/null; then
        echo "Package "$1" just installed"
    else
        echo "Installing package "$1""
        sudo pacman -S --noconfirm --needed $1
    fi
}

list=(
plasma-meta
dolphin
konsole
spectacle
dolphin-plugins
kde-gtk-config
kde-system-meta
kdeconnect
ocs-url
packagekit-qt5
partitionmanager
systemd-kcm
)
