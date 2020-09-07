#!/usr/bin/env zsh

# TODO allow access from gist

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# ssh key
echo 'Install kr via homebrew'
brew install 'kryptco/tap/kr'
kr restart
kr pair
ssh me.krypt.co
kr github
kr codesign
kr codesign test

git clone git@github.com:grapswiz/dotfiles.git

cd dotfiles || return
./osx.sh
./spotlight.sh
./keyboard.sh
./google-japanese-ime.sh
./alfred.sh
./visual-studio-code.sh

for app in Finder Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done
