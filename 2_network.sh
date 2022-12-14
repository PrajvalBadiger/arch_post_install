#!/bin/sh 

echo
echo "INSTALLING NETWORK"
echo

PKGS=(
	
	'wpa_supplicant'
	'networkmanager'
	'python-gobject'
	'gtk3'
	'jq'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
