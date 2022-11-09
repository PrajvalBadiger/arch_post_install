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

	# fonts
	'noto-fonts'
	'noto-fonts-emoji'

	'ntp'
	'openssh'
	'ntfs-3g' # ntfs filesystem support
	'parted'
	'python'
	'rsync'
	'steam'
	'scrot' # screenshot
	'stow'
	'sxhkd'
	'sxiv'
	'telegram-desktop'
	'thunar' # alternate 'nemo'
	'tmux'
	'unclutter'
	'unrar'
	'unzip'
	'vim'
	'wget'
	'youtube-dl'
	'zathura'
	'zathura-pdf-mupdf'

	# auto start services for artix 
	# 'ntp'
	# 'ntp-runit'
	# 'networkmanager'
	# 'networkmanager-runit'

)

for PKG in "${pacpkgs[@]}"; do
	echo " :: INSTALLING: ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
