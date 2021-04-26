#!/bin/sh

# deploy dotfiles, config files and scripts

dotdir="${HOME}/.dotfiles"

echo " :: INSTALLING stow"
sudo pacman -S stow --noconfirm --needed

git clone https://github.com/PrajvalBadiger/dotfiles ${dotdir}

rm $HOME/.bashrc $HOME/.bash_aliases $HOME/.profile

cd ${dotdir}
stow bash config local tmux vim 

echo
echo Done!
echo

exit 0
