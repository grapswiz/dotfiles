#!/usr/bin/env osascript

on run argv
  set cursorSize to (first item of argv) as number

  tell application "System Preferences"
    reveal anchor "Seeing_Display" of pane id "com.apple.preference.universalaccess"
    activate
  end tell

  tell application "System Events"
    tell application process "System Preferences"
      repeat while not (exists of radio button "カーソル" of tab group 1 of group 1 of window "アクセシビリティ")
        delay 1.0E-3
      end repeat
      click radio button "カーソル" of tab group 1 of group 1 of window "アクセシビリティ"
      set value of value indicator 1 of slider "カーソルのサイズ:" of tab group 1 of group 1 of window "アクセシビリティ" of application process "System Preferences" of application "System Events" to cursorSize
    end tell
  end tell
end run