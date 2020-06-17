#!/usr/bin/env bash

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Installing stardhip prompt"
curl -fsSL https://starship.rs/install.sh | bash

echo "Installing zsh autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions $XDG_CONFIG_HOME/zsh/zsh-autosuggestions

echo "Installing zsh highlight"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $XDG_CONFIG_HOME/zsh/zsh-syntax-highlighting

echo "installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
