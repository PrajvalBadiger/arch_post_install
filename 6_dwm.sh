#!/bin/sh

# installation script for my fork of dwm, dwmblocks and dmenu

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
	git clone $mygiturl/dwm-6.4 $src_dir/dwm_build/dwm

	cd $src_dir/dwm_build/dwm
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
