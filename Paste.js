var app = Application('System Events');
app.includeStandardAdditions = true;
var s = app.theClipboard().replace(/\r+$/, '');
var i = s.search(/\r/);

try {
  if (i > 0) {
    s = app.displayDialog('May I paste ?', {
      defaultAnswer: s
    }).textReturned;
  }
  var iTerm = Application("iTerm");
  iTerm.write(iTerm.currentWindow.currentSession, {
    text: s,
    newline: false
  });
} catch (e) {
  // do nothing
}
