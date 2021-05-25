#!/bin/sh

printf "Backing Up ZSH Configs"
cp .oh-my-zsh $(pwd)/
cp .zshrc $(pwd)/

printf "Backing Up Neovim Configs"
cp $"HOME"/.config/nvim $(pwd)/.config/
