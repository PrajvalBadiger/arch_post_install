#!/usr/bin/env bash

aurpkgs=(

	'libxft-bgra-git'
	'neofetch'
	'picom-ibhagwan-git'
	'zsh-fast-syntax-highlight-git'

)

# install yay form github
install_yay () {

	install_dir="$HOME/.local/src/yay-git/"
	mkdir $install_dir
	git clone https://aur.archlinux.org/yay-git.git  $install_dir
	cd $install_dir
	makepkg -si

}

#install_yay &&

for PKG in "${aurpkgs[@]}"; do
	echo " :: INSTALLING: ${PKG}"
	yay -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
