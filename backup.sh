#!/bin/sh
bleak=/home/bleak
git clone https://github.com/bleak-alpha/dotfiles.git $bleak

printf "\nBacking Up ZSH Configs"
cp $bleak/.oh-my-zsh $bleak/dotfiles/
cp $bleak/.zshrc $bleak/dotfiles/

printf "\nBacking Up Neovim Configs"
cp $bleak/.config/nvim $bleak/dotfiles/

printf "\nBacking up "
