set theCr to ASCII character 13

set strClip to get the clipboard
set ind to offset of theCr in strClip
set len to length of strClip

if ind > 0 then
  if ind = len then
    set the clipboard to characters 1 thru (len - 1) of strClip as text
  else
    display dialog "May I Paste ?" buttons {"Yes", "No"} default button 2 default answer strClip
    set ret to result
    if button returned of ret is "Yes" then
      set the clipboard to text returned of ret
    else
      error number -128
    end if
  end if
end if

tell application "System Events"
  keystroke "\\" using command down
end tell
