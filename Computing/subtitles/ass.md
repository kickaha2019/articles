@title		Advanced SubStation Alpha
@markdown
A format popular among Anime and Karaoke fans according to a
[Multimedia Wiki](https://wiki.multimedia.cx/index.php?title=SubStation_Alpha).
There's another page on it at
[Matro&scaron;ka](https://www.matroska.org/technical/subtitles.html#ssaass-subtitles).

*ASS* files consist of a number of sections like *Script Info*,
*V4+ Styles*, and *Events*. An example *Script Info* section:

~~~
[Script Info]
; Script generated by Aegisub 2.1.9
; http://www.aegisub.org/
Title: Default Aegisub file
ScriptType: v4.00+
WrapStyle: 0
PlayResX: 1280
PlayResY: 720
ScaledBorderAndShadow: yes
Video Aspect Ratio: 0
Video Zoom: 2
Video Position: 23
Last Style Storage: Default
Audio File: ?video
Video File: Mirai Nikki - ANOTHER WORLD - Ep02 (1280x720 x264).mkv

~~~
An example *V4+ Styles* section:

~~~
[V4+ Styles]
Format: Name, Fontname, Fontsize, PrimaryColour, SecondaryColour, OutlineColour, BackColour, Bold, Italic, Underline, StrikeOut, ScaleX, ScaleY, Spacing, Angle, BorderStyle, Outline, Shadow, Alignment, MarginL, MarginR, MarginV, Encoding
Style: Default,Century Gothic,45,&H00FFFFFF,&H000000FF,&H00602500,&H32000000,0,0,0,0,100,100,0,0,1,3.75,0,2,20,20,15,1
Style: 2nd Speaker,Century Gothic,45,&H00FFFFFF,&H000000FF,&H00004FD0,&H64000000,0,0,0,0,100,100,0,0,1,3.75,0,2,20,20,15,1
Style: Phone Update,Arial,42,&H00000000,&H000000FF,&H00FFFFFF,&H64000000,-1,0,0,0,100,100,0,0,1,3.75,0,7,20,20,15,1
Style: Bg Speaker,Century Gothic,45,&H00FCFF7C,&H000000FF,&H00000000,&H64000000,0,-1,0,0,100,100,0,0,1,3,3,8,20,20,15,1
Style: Past/Off Screen,Century Gothic,45,&H00FFFFFF,&H000000FF,&H00692A09,&H64000000,0,-1,0,0,100,100,0,0,1,3.75,0,2,20,20,15,1
Style: Text,Century Gothic,45,&H00FFFFFF,&H000000FF,&H00692A09,&H64000000,0,0,0,0,100,100,0,0,1,0,3.75,5,20,20,15,1
Style: Title,Square721 BT,53,&H00FFFFFF,&H000000FF,&H00602500,&H64000000,0,0,0,0,100,100,0,0,1,2.25,2.25,2,20,20,15,1
Style: Credits,Square721 BT,45,&H0000FFFF,&H000000FF,&H00000000,&H64000000,0,0,0,0,100,100,0,0,1,0,2.25,2,20,20,15,1
Style: Note,Century Gothic,39,&H006C9FFC,&H000000FF,&H00000000,&H64000000,-1,0,0,0,100,100,0,0,1,2.25,0,7,20,20,15,1

~~~
A example excerpt from a *Script Info* section:

~~~
[Events]
Format: Layer, Start, End, Style, Name, MarginL, MarginR, MarginV, Effect, Text
Dialogue: 0,0:00:00.74,0:00:05.52,Default,,0000,0000,0000,, I am Deus, the host of this game.
Dialogue: 0,0:00:06.01,0:00:07.26,Default,,0000,0000,0000,, Game?
Dialogue: 0,0:00:07.26,0:00:11.14,Default,,0000,0000,0000,, That which you possess...
Dialogue: 0,0:00:11.14,0:00:14.82,Default,,0000,0000,0000,, It is called a Future Diary.
Dialogue: 0,0:00:15.93,0:00:22.11,Default,,0000,0000,0000,, The fate of the owner is written on the screen.
~~~
