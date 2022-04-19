#!/bin/zsh
HERE=${0:a:h}
if [ -d "$HERE/ohmyzsh" ]; then
	echo "ohmyzsh already exists"
else
	git clone https://github.com/nathanfdunn/ohmyzsh "$HERE/ohmyzsh"
fi

echo "ZDOTDIR='$HERE'" > ~/.zshenv
LOCALFOLDER="$HERE/local"
mkdir -p "$LOCALFOLDER"
mkdir -p "$LOCALFOLDER/Commands"
touch "$LOCALFOLDER/env"
touch "$LOCALFOLDER/path"
touch "$LOCALFOLDER/aliases"
touch "$LOCALFOLDER/functions"
touch "$LOCALFOLDER/opts"
touch "$LOCALFOLDER/gotos"
git init "$HERE/local"

chmod -R +x "$HERE/Commands/"
chmod -R +x "$LOCALFOLDER/Commands/"
