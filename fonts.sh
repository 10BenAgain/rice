#!/bin/bash

ROOT=$(pwd)
FONTSDIR="$HOME/.local/share/fonts"
FILES="files"

# Pull and install fonts
HDIR="hack.zip"
HACK="https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip"
HTTF="ttf"

FDIR="awesome.zip"
FAWESOME="https://use.fontawesome.com/releases/v7.0.0/fontawesome-free-7.0.0-desktop.zip?_gl=1*jsw0l5*_ga*MjY3MTYxNzU3LjE3NTUxODUwODI.*_ga_BPMS41FJD2*czE3NTUxODUwODEkbzEkZzEkdDE3NTUxODUxMjkkajEyJGwwJGgw"
FTTF="fontawesome"

if [ ! -d "$ROOT/$FILES" ]; then
	mkdir -v $FILES
fi

# Download font files and unzip them into files directory
curl -L --output $HDIR $HACK
unzip $HDIR -d $ROOT/$FILES

curl -L --output $FDIR $FAWESOME
unzip $FDIR -d $ROOT/$FILES

# Remove the .zip files
rm $HDIR $FDIR

# If .local fonts directory doesnt exist, then make one
if [ ! -d "$FONTSDIR" ]; then
	mkdir -v $FONTSDIR
fi

# Copy font files into font directory
find $ROOT/$FILES -type f \( -name "*.otf" -o -name "*.ttf" \) -exec cp {} "$FONTSDIR" \;

