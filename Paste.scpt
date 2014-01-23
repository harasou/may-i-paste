set theLF to ASCII character 10
set theCr to ASCII character 13
set strOfClip to get the clipboard

if strOfClip contains theCr then
  display dialog "May I Paste ?" buttons {"Yes", "No"} default button 2 default answer strOfClip
  set ret to result
  set button_returned to button returned of ret
  if button_returned is "Yes" then
    set the clipboard to text returned of ret
  else
    exit repeat
  end if
end if

tell application "System Events"
  keystroke "p" using command down
end tell
