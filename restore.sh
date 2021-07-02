#!/bin/sh

bleak=/home/bleak
repo=$bleak/dotfiles
git clone https://github.com/bleak-alpha/dotfiles.git $bleak

printf "\nRestoring ZSH and Oh-My-Zsh"
sudo pacman -Syy zsh ttf-fira-code powerline-fonts;
chsh -s $(which zsh);
sudo chsh -s $(which zsh);
sudo cp $repo/.oh-my-zsh $bleak/
sudo cp $repo/.zshrc $bleak/ 

printf "\nRestoring Neovim and Plugins"
sudo pacman -S neovim nodejs npm;
cp $repo/.config/nvim $bleak/.config/	
sudo cp $repo/.config/nvim /root/.config/
printf "\nRemember to run :PlugInstall to enable all plugins"

printf "\nRestoring Dunst"
sudo pacman -S dunst
cp $repo/.config/dunst $bleak/.config/

printf "\nRestoring pnmixer"
sudo pacman -S pnmixer
cp $repo/.config/pnmixer $bleak/.config/
