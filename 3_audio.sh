#!/bin/sh 

echo
echo "INSTALLING AUDIO"
echo

PKGS=(
	#audio
	'alsa-utils'
	'alsa-plugin'
	'pulseaudio'
	'pavucontrol'

	# bluetooth
	'bluez'
	'bluez-utils'
	'pulseaudio-bluetooth'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
