#!/usr/bin/env bash

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Installing stardhip prompt"
curl -fsSL https://starship.rs/install.sh | bash


