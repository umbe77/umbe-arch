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
lightdm-webkit2-greeter
plasma-meta
kde-applications-meta
awesome
bspwm
sxhkd
nitrogen
zsh
unclutter
picom
alacritty
kitty
chromium
firefox
xorg-xrandr
arandr
gtk-engine-murrine
imagemagick
playerctl
pulseaudio
pulseaudio-alsa
pavucontrol
alsa-firmware
alsa-lib
alsa-plugins
alsa-utils
volumeicon
network-manager-applet
pulseaudio-bluetooth
bluez
bluez-libs
bluez-utils
python-pip
qutebrowser
zenity
vim
neofetch
neovim
sshfs
ttf-fira-code
breeze
w3m
ripgrep
exa
docker
bat
jq
x11-ssh-askpass
rofi
tmux
pamac-aur
unace
unrar
zip
unzip
sharutils
uudeview
arj
cabextract
htop
tlp
yad
wmctrl
)

for name in "${list[@]}" ; do
    u_install $name
done

echo "Enable Bluetooth service"
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

echo "Enable tlp service"
sudo systemctl enable tlp.service

echo "set docker permissions"
sudo groupadd docker
sudo usermod -aG docker $USER

echo "Enable SDDM"
sudo systemctl enable lightdm.service

echo "change defaul shell"
chsh -s $(which zsh)

