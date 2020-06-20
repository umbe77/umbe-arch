#!/usr/bin/env bash

set_current_city 1
polybar_weather 1

sudo systemctl enable sddm
sudo systemctl enable NetworkManager

nvm install 12
sudo snap install code --classic
