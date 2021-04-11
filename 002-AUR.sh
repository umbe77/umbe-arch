#!/usr/bin/env bash

aur_install() {
    if yay -Qi $1 &> /dev/null; then
        echo "Package "$1" just installed"
    else
        echo "Installing package "$1""
        paru -S --noconfirm --needed $1
    fi
}

list=(
aritim-dark-gtk
aritim-dark-kde
tela-icon-theme
lightdm-webkit-theme-aether
insomnia-bin
xbanish
lazydocker
lazygit
pfetch
teams
docker-compose
visual-studio-code-bin
azuredatastudio-bin
onlyoffice-bin
clipster
ulauncher
sublime-test-3
gitkraken
rider
openfortigui
bottom
)
#snapd

for name in "${list[@]}" ; do
    aur_install $name
done

#echo "Configuring snapd"
#sudo systemctl enable snapd
#sudo systemctl start snapd
#sudo ln -s /var/lib/snapd/snap /snap

