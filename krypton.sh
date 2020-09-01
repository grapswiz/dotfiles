#!/usr/bin/env zsh

echo 'Install kr via homebrew'
brew install 'kryptco/tap/kr'

# setup
kr restart
kr pair
ssh me.krypt.co
kr github
kr codesign
kr codesign test