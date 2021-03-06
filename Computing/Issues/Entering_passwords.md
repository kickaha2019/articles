@title		Entering passwords in Safari
@markdown
Recently I've been finding a number of webpages which want passwords to be entered, yet however they've done it the password fields prevents ordinary cut and paste from working.  This to me is a shame - I use passwords which are long and random so typing them correctly is difficult.  It's much more reliable not to mention quicker to be able to paste them.  Security-wise I would have thought not being able to paste them was bad too.

Googling got to me to pages like
[Paste clipboard contents to secure Safari pages](http://hints.macworld.com/article.php?story=20040120184422156).
This was exactly what I needed.  My version of the script is:

~~~
 -- Paste clipboard into Safari protected field

-- Pick whatever web browser you are using.
tell application "Safari"
	activate
end tell

set theClip to the clipboard

-- Type out what is on the clipboard
tell application "System Events"
	keystroke theClip
end tell

~~~
which I run when I have copied the password to the clipboard.
