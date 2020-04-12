A format somewhat inspired by HTML. The files in this format
I've come across have for some reason been in a variety of text
encodings. A sample extract:

~~~
<SAMI>
<HEAD>
<HEAD>
<TITLE></TITLE>
<STYLE TYPE="text/css">
<!--
P { margin-left:8pt; margin-right:8pt; margin-bottom:2pt; margin-top:2pt;
	text-align:center;
	font-size:20pt; font-family:arial, sans-serif; font-weight:normal; color:white; }
.ENCC { Name:English; lang:en-US; SAMIType:CC;}
#STDPrn { Name:Standard Print;}
#LargePrn { Name:Large Print; font-size:25pt;}
#SmallPrn { Name:Small Print; font-size:15pt;}
-->
</STYLE>
</HEAD>
<BODY>
<SYNC Start=38879><P Class=ENCC>
Once every 120 years...
<SYNC Start=40647><P Class=ENCC>
<SYNC Start=42315><P Class=ENCC>
A "shinigami" appears<br>from the eastern seas.

~~~
A second example excerpt showing how variable the files are:

~~~
<SYNC Start=720>
<P Class=EN-AUCC><i>{\fs18}<font color=00ffff>In 1922, Scientific American magazine, offered a cash prize of $2,500 to any <br>Medium who could produce a <br>Supernatural Manifestation to the satisfaction of the Magazine.
<SYNC Start=12610>
<P Class=EN-AUCC><i>{\fs18\a1}<font color=00ffff>A "Psychic Committee" that consists of many prominent professors had been established.
<SYNC Start=17890>
<P Class=EN-AUCC><i>{\fs18}<font color=00ffff>A Spaniard showed up <br>to take on the challenge.
<SYNC Start=21690>
<P Class=EN-AUCC><i>{\fs18}<font color=00ffff>I have X-ray eyes 
<SYNC Start=24690>

~~~

