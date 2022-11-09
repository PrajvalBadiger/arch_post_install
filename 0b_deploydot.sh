#!/bin/sh

# deploy dotfiles, config files and scripts

dotdir="${HOME}/.dotfiles"

echo " :: INSTALLING stow"
sudo pacman -S stow --noconfirm --needed

git clone https://github.com/PrajvalBadiger/dotfiles ${dotdir}

rm -f $HOME/.bashrc $HOME/.bash_aliases $HOME/.profile
mkdir $HOME/.config $HOME/.local/

cd ${dotdir}
stow bash config local tmux vim xinit -v

echo
echo Done!
echo

exit 0
