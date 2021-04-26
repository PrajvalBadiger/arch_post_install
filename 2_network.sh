#!/bin/sh 

echo
echo "INSTALLING NETWORK"
echo

PKGS=(
	
	'wpa_supplicant'
	'networkmanager'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
