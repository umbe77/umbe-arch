#!/usr/bin/env bash

cd ~
#bakup file 
mv .bashrc .bashrc.arch_orig
mv .bash_profile .bash_profile.arch_orig
#set bare repo
git clone --bare https://github.com/umbe77/dotfiles.git $HOME/.dotfiles
#checkout bare dotfiles repo
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
