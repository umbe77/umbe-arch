#!/usr/bin/env bash

u_install() {
    if pacman -Qi $1 &> /dev/null; then
        echo "Package "$1" just installed"
    else
        echo "Installing package "$1""
        sudo pacman -S --noconfirm --needed $1
    fi
}

list=(
qtile
sxhkd
nitrogen
zsh
arcolinux-logout-git
dunst
unclutter
xautolock
picom
udisks2
udiskie
blueman-applet
networkmanager
network-manager-applet 
alacritty
termite
chromium
arandr
gtk-engine-murrine
imagemagick
lxappearance
lxrandr
playerctl
pulseaudio
pulseaudio-alsa
pavucontrol
alsa-firmware
alsa-lib
alsa-plugins
alsa-utils
volumeicon
python-pip
qutebrowser
zenity
neovim
sshfs
ttf-fira-code
xcursor-breeze
materia-gtk-theme
papirus-icon-theme
ripgrep
exa
)

for name in "${list[@]}" ; do
    u_install $name
done

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Installing stardhip prompt"
curl -fsSL https://starship.rs/install.sh | bash

echo "Installing ranger file manager"
sudo pip3 install ranger-fm
echo "Installing ueberzug"
sudo pip3 install ueberzug
echo "Installing pywal"
sudo pip3 install pywal

