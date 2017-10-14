set theCr to ASCII character 13

set strClip to get the clipboard
set ind to offset of theCr in strClip
set len to length of strClip

if ind > 0 then
  if ind = len then
    set pasteString to characters 1 thru (len - 1) of strClip as text
  else
    display dialog "May I Paste ?" buttons {"Yes", "No"} default button 2 default answer strClip
    set ret to result
    if button returned of ret is "Yes" then
      set pasteString to text returned of ret
    else
      error number -128
    end if
  end if
else
  set pasteString to strClip
end if

tell application "iTerm"
  tell current session of current window
    write text pasteString without newline
  end tell
end tell
