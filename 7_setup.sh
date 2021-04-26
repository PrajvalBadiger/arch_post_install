#!/bin/sh 

# enable lid close to suspend

echo
echo "Setting laptop lid close to suspend"

sudo sed -i -e 's|[# ]*HandleLidSwitch[ ]*=[ ]*.*|HandleLidSwitch=suspend|g' /etc/systemd/logind.conf


# enable bluetooth demon

echo
echo "Enabling bluetooth daemon and setting it to auto-start"

sudo sed -i 's|#AutoEnable=false|AutoEnable=true|g' /etc/bluetooth/main.conf
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# print

echo
echo "Enabling the cups service daemon"

systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service

# setting clock via Network

echo
echo "Enabling Network Time Protocol so clock will be set via the network"

sudo ntpd -qg
sudo systemctl enable ntpd.service
sudo systemctl start ntpd.service

# enable network manager

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service

# dwm startup with a auto script

sudo cp ./dwm.desktop /usr/share/xsessions/dwm.desktop

# enable touchpad click

sudo cp ./30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
