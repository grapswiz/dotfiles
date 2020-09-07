#!/usr/bin/env zsh

# 入力ソース -> USキー
defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID -string com.apple.keylayout.ABC

# change capslock to ctrl
keyboard_id="$(ioreg -c AppleEmbeddedKeyboard -r | grep -Eiw "VendorID|ProductID" | awk '{ print $4 }' | paste -s -d'-\n' -)-0"
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add "
<dict>
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771300</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771129</integer>\
</dict>
"

# ショートカット -> 入力ソース -> 前の入力ソースを選択 を command + スペース に変更
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 60 "
      <dict>
        <key>enabled</key>
        <true/>
        <key>value</key>
        <dict>
          <key>parameters</key>
          <array>
            <integer>32</integer>
            <integer>49</integer>
            <integer>1048576</integer>
          </array>
          <key>type</key>
          <string>standard</string>
        </dict>
      </dict>
"

# ショートカット -> 入力ソース -> 入力メニューの次のソースを選択 を無効化
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 61 "<dict><key>enabled</key><false/></dict>"