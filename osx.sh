#!/usr/bin/env zsh

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Three finger horizontal swipe
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1

# Dock
defaults write com.apple.Dock showhidden -bool YES
defaults write com.apple.dock static-only -boolean true
defaults write com.apple.dock autohide -boolean true

# Finder
## 全ての拡張子のファイルを表示する
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
## 不可視ファイルを表示する
defaults write com.apple.finder AppleShowAllFiles YES
## フォルダを開くときのアニメーションを無効にする
defaults write com.apple.finder AnimateWindowZoom -bool false
## 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Menu bar
## Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

## Date
defaults write com.apple.menuextra.clock DateFormat -string "M\\U6708d\\U65e5(EEE)  H:mm:ss"
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false
defaults write com.apple.menuextra.clock IsAnalog -bool false

## Screencapture
defaults write com.apple.screencapture location ~/Pictures/screenshots/

# Security & Privacy
## General: Allow applications downloaded from = Anyware
sudo spctl --master-disable

# Kill affected applications
for app in Finder Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done
