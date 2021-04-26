#!/bin/sh

# Note: Thing to install after a fresh install of arch
#	video drivers
#	1. xf86-video-intel
#	2. xf86-video-amdgpu
#	3. xf86-video-ati
#	yay

pacpkgs=(

	'alacritty'
	'base-devel'
	'bash-completion'
	'bc'
	'bluez-utils'
	'brave'
	'cups'
	'cups-pdf'
	'curl'
	'dunst'
	'feh'
	'ffmpeg'
	'figlet'
	'git'
	'go'
	'htop'
	'lolcat'
	'mpv'
	'noto-fonts'
	'ntp'
	'openssh'
	'parted'
	'python'
	'rsync'
	'steam'
	'stow'
	'sxhkd'
	'sxiv'
	'telegram-desktop'
	'thunar' # 'nemo'
	'tmux'
	'unclutter'
	'unrar'
	'unzip'
	'vim'
	'wget'
	'youtube-dl'
	'zathura'
	'zathura-pdf-mupdf'

)

for PKG in "${pacpkgs[@]}"; do
	echo " :: INSTALLING: ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
