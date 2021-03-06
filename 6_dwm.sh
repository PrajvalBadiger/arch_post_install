#!/bin/sh

# installation script for dwm with my patches and dwmblocks
#+ also installs dmenu with my patches
#+ required -> my scripts from dotfiles/local and git

# scripts required
#	1. suckbranch
#	2. suckreset
#	3. suckapply
#	4. suckmerge


# confirmation prompt
confirm () {

	read -r -p "${1:- :: Proceed with installation? [Y/n]} " response
	case "$response" in
		"no" | "NO" | "n" | "No" | "N")
			false
			;;
		*)
			true
			;;
	esac

}

# INSTALL dwm
install_dwm () {

	mkdir -vp $src_dir/dwm_build
	git clone $mygiturl/dwm $src_dir/dwm_build/dwm
	git clone $mygiturl/my_dwm_patches $src_dir/dwm_build/my_dwm_patches

	cd $src_dir/dwm_build/dwm
	suckbranch dwm &&
		suckreset &&
		suckapply dwm &&
		suckmerge &&
		make && sudo make clean install || exit 1

}

# INSTALL dwmblocks
install_dwmblocks () {

	git clone $mygiturl/dwmblocks $src_dir/dwm_build/dwmblocks
	cd $src_dir/dwm_build/dwmblocks/
	make && sudo make clean install || exit 1

}

# INSTALL dmenu
install_dmenu () {

	mkdir -p $src_dir/dmenu_build
	git clone $mygiturl/dmenu $src_dir/dmenu_build/dmenu
	git clone $mygiturl/my_dmenu_patches $src_dir/dmenu_build/my_dmenu_patches

	cd $src_dir/dmenu_build/dmenu
	suckbranch dmenu &&
		suckreset &&
		suckapply dmenu &&
		suckmerge &&
		make && sudo make clean install || exit 1

}


# start of installation
# figlet -f 3d.flf "DWM Install" | lolcat

# ask for confirmation
echo -e "\n This script installs dwm, dwmblocks and dmenu\n"
confirm || exit 1

# installation dir
src_dir="$HOME/.local/src"

# urls
mygiturl="https://github.com/PrajvalBadiger"

echo ":: INSTALING dwm"
echo
install_dwm &&
echo ":: INSTALING dwmblocks"
echo
install_dwmblocks &&
echo ":: INSTALING dmenu"
echo
install_dmenu

echo
echo Done!
echo

exit 0
