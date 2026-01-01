#!/usr/bin/env zsh

# create symbolic link
cd ~
ln -s ~/dotfiles/.zshrc .
ln -s ~/dotfiles/.zshrc ./.zlogin

ln -s ~/dotfiles/.config ~/

# ensure zellij config is available at ~/.config/zellij
mkdir -p ~/.config
ln -s ~/dotfiles/.config/zellij ~/.config/zellij

ln -s ~/dotfiles/.fzf.zsh ~/.fzf.zsh
