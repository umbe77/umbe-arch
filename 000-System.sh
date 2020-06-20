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
lightdm
arcolinux-lightdm-gtk-greeter-plasma
arcolinux-lightdm-gtk-greeter-settings
arcolinux-wallpapers-git
plasma-meta
dolphin
dolphin-plugins
konsole
kde-gtk-config
kde-system-meta
kdeconnect
packagekit-qt5
qtile
sxhkd
nitrogen
zsh
nemo
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
breeze
w3m
materia-gtk-theme
papirus-icon-theme
ripgrep
exa
docker
bat
jq
x11-ssh-askpass
rofi
tmux
lxqt-openssh-askpass
x11-ssh-askpass
mintstick-git
pamac-aur
unace
unrar
zip
unzip
sharutils
uudeview
arj
cabextract
file-roller
)

for name in "${list[@]}" ; do
    u_install $name
done

echo "set docker permissions"
sudo groupadd docker
sudo usermod -aG docker $USER

echo "change defaul shell"
chsh -s $(which zsh)
