#!/bin/sh 

echo
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg-server'           
        'xorg-apps'             
        'xorg-xinit'            
        'xf86-video-intel'      
        'mesa'                   
        'xf86-input-libinput'    
		'xorg-xbacklight'		
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
