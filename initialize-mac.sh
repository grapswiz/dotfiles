#!/usr/bin/env zsh

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

curl -fsSL https://gist.githubusercontent.com/grapswiz/60b8f20e661d04fbc9e1/raw/4e590c90910827472e75d011534673fba0b114b8/brewfile > ~/brewfile
curl -fsSL https://gist.githubusercontent.com/grapswiz/60b8f20e661d04fbc9e1/raw/4e590c90910827472e75d011534673fba0b114b8/osx.sh > ~/osx.sh

brew bundle
