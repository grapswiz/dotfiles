#!/usr/bin/env zsh

# TODO allow access from gist

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# ssh key
./krypton.sh

git clone git@github.com:grapswiz/dotfiles.git

brew bundle

./osx.sh
./alfred.sh
./visual-studio-code.sh