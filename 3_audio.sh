#!/bin/sh 

echo
echo "INSTALLING AUDIO"
echo

PKGS=(
	#audio
	'asoundconf'
	'alsa-utils'
	'alsa-plugin'
	'pulseaudio'
	'pulseaudio-alsa'
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
