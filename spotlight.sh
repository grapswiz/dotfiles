#!/usr/bin/env zsh

# ショートカット -> Spotlight ショートカットのチェックを外す
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "<dict><key>enabled</key><false/></dict>"
