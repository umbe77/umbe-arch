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
insomnia-bin
lazydocker
lazygit
pfetch
teams
docker-compose
visual-studio-code-bin
)
#snapd

for name in "${list[@]}" ; do
    aur_install $name
done

#echo "Configuring snapd"
#sudo systemctl enable snapd
#sudo systemctl start snapd
#sudo ln -s /var/lib/snapd/snap /snap

