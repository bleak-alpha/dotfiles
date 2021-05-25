#!/bin/sh
printf "Restoring ZSH and Oh-My-Zsh"
sudo pacman -S zsh;
chsh -s $(which zsh);
sudo chsh -s $(which zsh);
sudo cp .oh-my-zsh $"HOME"/
sudo cp .zshrc $"HOME"/

printf "Restoring Neovim and Plugins"
sudo pacman -S neovim nodejs npm;
cp .config/nvim $"HOME"/
sudo cp .config/nvim /root/.config/
printf "Remember to run :PlugInstall to enable all plugins"
