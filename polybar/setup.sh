#!/bin/bash

sudo apt install polybar

CONFIG="config.ini"
LAUNCHER="launch.sh"
POLYBAR="/.config/polybar"
TREE="tree.sh"

if [ ! -d "$HOME$POLYBAR" ]; then
	mkdir -v $HOME$POLYBAR
fi

cp $(pwd)/$CONFIG  $HOME$POLYBAR
cp $(pwd)/$LAUNCHER $HOME$POLYBAR

chmod +x $TREE
cp $(pwd)/$TREE $HOME$POLYBAR
