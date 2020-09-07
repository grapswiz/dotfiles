#!/usr/bin/env zsh

# 入力ソースをGoogle日本語入力の英数とひらがなに変更
defaults write com.apple.HIToolbox AppleEnabledInputSources -array \
        '{"Bundle ID" = "com.apple.50onPaletteIM";InputSourceKind = "Non Keyboard Input Method";}' \
        '{"Bundle ID" = "com.google.inputmethod.Japanese";"Input Mode" = "com.apple.inputmethod.Japanese";InputSourceKind = "Input Mode";}' \
        '{"Bundle ID" = "com.google.inputmethod.Japanese";InputSourceKind = "Keyboard Input Method";}' \
        '{"Bundle ID" = "com.google.inputmethod.Japanese";"Input Mode" = "com.apple.inputmethod.Roman";InputSourceKind = "Input Mode";}'
defaults write com.apple.HIToolbox AppleInputSourceHistory -array \
        '{"Bundle ID" = "com.google.inputmethod.Japanese";"Input Mode" = "com.apple.inputmethod.Roman";InputSourceKind = "Input Mode";}' \
        '{"Bundle ID" = "com.google.inputmethod.Japanese";"Input Mode" = "com.apple.inputmethod.Japanese";InputSourceKind = "Input Mode";}'
defaults write com.apple.HIToolbox AppleSelectedInputSources -array \
        '{"Bundle ID" = "com.google.inputmethod.Japanese";"Input Mode" = "com.apple.inputmethod.Roman";InputSourceKind = "Input Mode";}'
