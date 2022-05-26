#!/usr/bin/env zsh

# TODO allow access from gist

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ssh key
echo -e "[storage]\nengine = icloud" > .mackup.cfg
mackup restore

git clone git@github.com:grapswiz/dotfiles.git

cd dotfiles || return
brew bundle
./osx.sh
./display.sh
./spotlight.sh
./keyboard.sh
./google-japanese-ime.sh
./alfred.sh
./visual-studio-code.sh
./jetbrains-toolbox.sh

for app in Finder Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done
