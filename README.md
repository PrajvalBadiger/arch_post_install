# Arch Linux post install scripts

This repo contains arch linux post installation scripts. This project deploys my dotfiles and installs dwm as the window manager.
Take a look at my <a href="https://github.com/PrajvalBadiger/dotfiles"> dotfiles </a> before running these scripts. <br>

All the packages installed are listed in [`4_pkginstall`](/4_pkginstall) and [`5_aurinstall`](/5_aurinstall). Other installation pakages are listed
in the respective scripts.

## Usage

Run each script one by one according to the number in the script name. <br>

```bash
./0_deploydot.sh
./1_xorg.sh
./2_network.sh
./3_audio.sh
./4_pkginstall.sh
./5_aurinstall.sh
./6_dwm.sh
./7_setup.sh
```
After all the installation reboot. <br>
