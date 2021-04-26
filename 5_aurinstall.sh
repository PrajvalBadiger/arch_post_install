#!/usr/bin/env bash

aurpkgs=(

	'compton-tryone-git'
	'libxft-bgra-git'
	'ttf-comic-mono-git'
	'ufetch-git' # 'neofetch'

)

# install yay form github
git clone https://aur.archlinux.org/yay.git /opt/yay-git/
cd /opt/yay-git/
makepkg -si

for AUR in "${aurpkgs[@]}"; do
	echo " :: INSTALLING: ${PKG}"
	yay -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
