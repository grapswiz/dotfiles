#!/usr/bin/env zsh

open -a /Applications/Alfred\ 4.app/

# hotkey: option + space
defaults write com.runningwithcrayons.Alfred-Preferences hotkey.default -dict key -int 49 mod -int 524288 string Space
