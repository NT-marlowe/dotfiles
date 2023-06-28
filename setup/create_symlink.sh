#!/bin/bash

# create symbolic link
cd ~
ln -s ~/dotfiles/.zshrc .
ln -s ~/dotfiles/.zshrc ./.zlogin

mkdir -p ~/.config
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/wezterm
ln -s ~/dotfiles/wezterm.lua ~/.config/wezterm/wezterm.lua

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
