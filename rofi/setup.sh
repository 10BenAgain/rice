#!/bin/bash

sudo apt install rofi

LAUNCHER="launcher.sh"
MENU="powermenu.sh"
MENU_THEME="style-3.rasi"

CONFIG="/.config/rofi"
IMG="e.jpg"

# Clone and install the themes repo
git clone --depth=1 https://github.com/adi1090x/rofi.git

(cd rofi; chmod +x setup.sh; ./setup.sh)

# Remove default image and add the Ponyo themed one
rm $HOME/$CONFIG/images/$IMG
cp ../img/$IMG $HOME/$CONFIG/images 

# Make edited launcher executable
chmod +x launcher.sh

# Remove launcher.sh from setup then add edited on
rm $HOME/$CONFIG/launchers/type-7/$LAUNCHER
cp $(pwd)/$LAUNCHER $HOME/$CONFIG/launchers/type-7

# Same as above except with power menu
chmod +x powermenu.sh
rm $HOME/$CONFIG/powermenu/type-5/$MENU
cp $(pwd)/{$MENU, $MENU_THEME} $HOME/$CONFIG/powermenu/type-5
